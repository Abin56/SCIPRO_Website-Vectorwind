import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

//Local imports



/// Represents the PDF stateful widget class.
class CreatePdfWidget extends StatefulWidget {
  /// Initalize the instance of the [CreatePdfWidget] class.
  const CreatePdfWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CreatePdfState createState() => _CreatePdfState();
}

class _CreatePdfState extends State<CreatePdfWidget> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create PDF document'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.lightBlue,
                disabledForegroundColor: Colors.grey,
              ),
              onPressed: generateInvoice,
              child: const Text('Generate PDF'),
            )
          ],
        ),
      ),
    );
  }

  Future<void> generateInvoice() async {
    //Create a PDF document.
    final PdfDocument document = PdfDocument();
    //Add page to the PDF
    final PdfPage page = document.pages.add();
    //Get page client size
    final Size pageSize = page.getClientSize();
    //Draw rectangle
    page.graphics.drawRectangle(
        bounds: Rect.fromLTWH(0, 0, pageSize.width, pageSize.height),
        pen: PdfPen(PdfColor(142, 170, 219)));
    //Generate PDF grid.
    final PdfGrid grid = getGrid();
    //Draw the header section by creating text element
    final PdfLayoutResult result = drawHeader(page, pageSize, grid);
    //Draw grid
    drawGrid(page, grid, result);
    //Add invoice footer
   // drawFooter(page, pageSize);
    //Save the PDF document
    final List<int> bytes = document.saveSync();
    //Dispose the document.
    document.dispose();
    //Save and launch the file.
    await saveAndLaunchFile(bytes, 'Invoice.pdf');
  }

  Future<void> saveAndLaunchFile(List<int> bytes, String fileName) async {
  final blob = Blob([Uint8List.fromList(bytes)]);
  final url = Url.createObjectUrlFromBlob(blob);
  AnchorElement(href: url)
    ..target = 'webbrowser'
    ..download = fileName
    ..click();
  Url.revokeObjectUrl(url);
}

  //Draws the invoice header
  PdfLayoutResult drawHeader(PdfPage page, Size pageSize, PdfGrid grid) {
    
    //Draw rectangle
    page.graphics.drawRectangle(
        brush: PdfSolidBrush(PdfColor(91, 126, 215)),
        bounds: Rect.fromLTWH(0, 0, pageSize.width - 115, 90));
    //Draw string
    page.graphics.drawString(
        'VectorWind', PdfStandardFont(PdfFontFamily.helvetica, 30),
        brush: PdfBrushes.white,
        bounds: Rect.fromLTWH(25, 0, pageSize.width - 115, 90),
        format: PdfStringFormat(lineAlignment: PdfVerticalAlignment.middle));
        //Loads the image from base64 string
        
// //PdfImage image = PdfBitmap.fromBase64String('data:image/jpeg;base64,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');
	
// //Draws the image to the PDF page
// page.graphics.drawImage(image, const Rect.fromLTWH(176, 0, 390, 130));



Future<Uint8List> getImageData() async {
  // Load the image from the assets
  final ByteData data = await rootBundle.load('assets/images/vector.png');
  return data.buffer.asUint8List();
}

    page.graphics.drawRectangle(
        bounds: Rect.fromLTWH(400, 0, pageSize.width - 400, 90),
        brush: PdfSolidBrush(PdfColor(65, 104, 205)));

    page.graphics.drawString(r'$' + getTotalAmount(grid).toString(),
        PdfStandardFont(PdfFontFamily.helvetica, 18),
        bounds: Rect.fromLTWH(400, 0, pageSize.width - 400, 100),
        brush: PdfBrushes.white,
        format: PdfStringFormat(
            alignment: PdfTextAlignment.center,
            lineAlignment: PdfVerticalAlignment.middle));

    final PdfFont contentFont = PdfStandardFont(PdfFontFamily.helvetica, 9);
    //Draw string
    page.graphics.drawString('Amount', contentFont,
        brush: PdfBrushes.white,
        bounds: Rect.fromLTWH(400, 0, pageSize.width - 400, 33),
        format: PdfStringFormat(
            alignment: PdfTextAlignment.center,
            lineAlignment: PdfVerticalAlignment.bottom));
    //Create data foramt and convert it to text.
    final DateFormat format = DateFormat.yMMMMd('en_US');
    final String invoiceNumber =
        'Invoice Number: 2058557939\r\n `\r\nDate: ${format.format(DateTime.now())}';
    final Size contentSize = contentFont.measureString(invoiceNumber);
    // ignore: leading_newlines_in_multiline_strings
    const String address = ''' To \r\n\r\nMidhun Sunny\r\n\r\nmidhunsunny86@gmail.com\r\n\r\n\r\nVectorWind Tech System Pvt.Ltd \r\n\r\nDoor.No.4/461,2nd floor,suites#151,\r\n\r\nValamkottil towers,\r\n\r\n judgemukku,Thrikkakkara P.O,\r\n\r\nKochi-682021,Kerala,India
         
        ''';
     

    PdfTextElement(text: invoiceNumber, font: contentFont).draw(
        page: page,
        bounds: Rect.fromLTWH(pageSize.width - (contentSize.width + 30), 120,
            contentSize.width + 30, pageSize.height - 120));

    return PdfTextElement(text: address, font: contentFont).draw(
        page: page,
        bounds: Rect.fromLTWH(30, 120,
            pageSize.width - (contentSize.width + 30), pageSize.height - 120))!;
  }

  //Draws the grid
  void drawGrid(PdfPage page, PdfGrid grid, PdfLayoutResult result) {
    Rect? totalPriceCellBounds;
    Rect? quantityCellBounds;
    //Invoke the beginCellLayout event.
    grid.beginCellLayout = (Object sender, PdfGridBeginCellLayoutArgs args) {
      final PdfGrid grid = sender as PdfGrid;
      if (args.cellIndex == grid.columns.count - 1) {
        totalPriceCellBounds = args.bounds;
      } else if (args.cellIndex == grid.columns.count - 2) {
        quantityCellBounds = args.bounds;
      }
    };
    //Draw the PDF grid and get the result.
    result = grid.draw(
        page: page, bounds: Rect.fromLTWH(0, result.bounds.bottom + 40, 0, 0))!;

    //Draw grand total.
    page.graphics.drawString('Grand Total\n SGST \n CGST',
        PdfStandardFont(PdfFontFamily.helvetica, 9, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(
            quantityCellBounds!.left,
            result.bounds.bottom + 10,
            quantityCellBounds!.width,
            quantityCellBounds!.height));
    page.graphics.drawString(getTotalAmount(grid).toString(),
        PdfStandardFont(PdfFontFamily.helvetica, 9, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(
            totalPriceCellBounds!.left,
            result.bounds.bottom + 10,
            totalPriceCellBounds!.width,
            totalPriceCellBounds!.height));
            
  // Draw SGST and CGST
  

 // Add SGST and CGST below Grand Total.
  page.graphics.drawString(
      'SGST : 190.64', PdfStandardFont(PdfFontFamily.helvetica, 9),
      bounds: Rect.fromLTWH(
          quantityCellBounds!.left,
          result.bounds.bottom + 30,
          quantityCellBounds!.width,
          quantityCellBounds!.height));

  page.graphics.drawString(
      'CGST : 190.64', PdfStandardFont(PdfFontFamily.helvetica, 9),
      bounds: Rect.fromLTWH(
          quantityCellBounds!.left,
          result.bounds.bottom + 50,
          quantityCellBounds!.width,
          quantityCellBounds!.height));

  // Draw total amount.String totalAmountText = 'Total Amount: ${getTotalAmount(grid)}'; // Modify this line
String totalAmountText = 'Total Amount: ${getTotalAmount(grid)}'; // Modify this line

  page.graphics.drawString(totalAmountText,
      PdfStandardFont(PdfFontFamily.helvetica, 9, style: PdfFontStyle.bold),
      bounds: Rect.fromLTWH(
          totalPriceCellBounds!.left,
          result.bounds.bottom + 70,
          totalPriceCellBounds!.width,
          totalPriceCellBounds!.height));
}
  
}
  //Draw the invoice footer data.


  //Create PDF grid and return
  PdfGrid getGrid() {
    //Create a PDF grid
    final PdfGrid grid = PdfGrid();
    //Secify the columns count to the grid.
    grid.columns.add(count: 4);
    //Create the header row of the grid.
    final PdfGridRow headerRow = grid.headers.add(1)[0];
    //Set style
    headerRow.style.backgroundBrush = PdfSolidBrush(PdfColor(68, 114, 196));
    headerRow.style.textBrush = PdfBrushes.white;
    headerRow.cells[0].value = 'Item';
    headerRow.cells[0].stringFormat.alignment = PdfTextAlignment.center;
    headerRow.cells[1].value = 'Price';
    headerRow.cells[2].value = 'Quantity';
    headerRow.cells[3].value = 'Amount';
    //Add rows
    addProducts('CA-1098', 8.99, 2, 17.98, grid);

    //Apply the table built-in style
    grid.applyBuiltInStyle(PdfGridBuiltInStyle.listTable4Accent5);
    //Set gird columns width
    grid.columns[1].width = 200;
    for (int i = 0; i < headerRow.cells.count; i++) {
      headerRow.cells[i].style.cellPadding =
          PdfPaddings(bottom: 5, left: 5, right: 5, top: 5);
    }
    for (int i = 0; i < grid.rows.count; i++) {
      final PdfGridRow row = grid.rows[i];
      for (int j = 0; j < row.cells.count; j++) {
        final PdfGridCell cell = row.cells[j];
        if (j == 0) {
          cell.stringFormat.alignment = PdfTextAlignment.center;
        }
        cell.style.cellPadding =
            PdfPaddings(bottom: 5, left: 5, right: 5, top: 5);
      }
    }
    return grid;
  }

  //Create and row for the grid.
  void addProducts(String item , double price,
      int quantity, double total, PdfGrid grid) {
    final PdfGridRow row = grid.rows.add();
    row.cells[0].value = item;
   
    row.cells[1].value = price.toString();
    row.cells[2].value = quantity.toString();
    row.cells[3].value = total.toString();
  }

  //Get the total amount.
  double getTotalAmount(PdfGrid grid) {
    double total = 0;
    for (int i = 0; i < grid.rows.count; i++) {
      final String value =
          grid.rows[i].cells[grid.columns.count - 1].value as String;
      total += double.parse(value);
    }
    return total;
  }

