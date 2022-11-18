.class public Lcom/android/internal/print/DumpUtils;
.super Ljava/lang/Object;
.source "DumpUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist writeMargins(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes$Margins;)V
    .locals 6
    .param p0, "proto"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "margins"    # Landroid/print/PrintAttributes$Margins;

    .line 191
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 192
    .local v0, "token":J
    invoke-virtual {p4}, Landroid/print/PrintAttributes$Margins;->getTopMils()I

    move-result v2

    const-string/jumbo v3, "top_mils"

    const-wide v4, 0x10500000001L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 193
    invoke-virtual {p4}, Landroid/print/PrintAttributes$Margins;->getLeftMils()I

    move-result v2

    const-string/jumbo v3, "left_mils"

    const-wide v4, 0x10500000002L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 194
    invoke-virtual {p4}, Landroid/print/PrintAttributes$Margins;->getRightMils()I

    move-result v2

    const-string/jumbo v3, "right_mils"

    const-wide v4, 0x10500000003L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 195
    invoke-virtual {p4}, Landroid/print/PrintAttributes$Margins;->getBottomMils()I

    move-result v2

    const-string v3, "bottom_mils"

    const-wide v4, 0x10500000004L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 196
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 197
    return-void
.end method

.method public static blacklist writeMediaSize(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes$MediaSize;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "proto"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J
    .param p5, "mediaSize"    # Landroid/print/PrintAttributes$MediaSize;

    .line 155
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 156
    .local v0, "token":J
    invoke-virtual {p5}, Landroid/print/PrintAttributes$MediaSize;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    const-wide v4, 0x10900000001L

    invoke-virtual {p1, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p5, v2}, Landroid/print/PrintAttributes$MediaSize;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "label"

    const-wide v4, 0x10900000002L

    invoke-virtual {p1, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 158
    invoke-virtual {p5}, Landroid/print/PrintAttributes$MediaSize;->getHeightMils()I

    move-result v2

    const-string v3, "height_mils"

    const-wide v4, 0x10500000003L

    invoke-virtual {p1, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 159
    invoke-virtual {p5}, Landroid/print/PrintAttributes$MediaSize;->getWidthMils()I

    move-result v2

    const-string/jumbo v3, "width_mils"

    const-wide v4, 0x10500000004L

    invoke-virtual {p1, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 160
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 161
    return-void
.end method

.method public static blacklist writePageRange(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PageRange;)V
    .locals 6
    .param p0, "proto"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "range"    # Landroid/print/PageRange;

    .line 267
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 268
    .local v0, "token":J
    invoke-virtual {p4}, Landroid/print/PageRange;->getStart()I

    move-result v2

    const-string/jumbo v3, "start"

    const-wide v4, 0x10500000001L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 269
    invoke-virtual {p4}, Landroid/print/PageRange;->getEnd()I

    move-result v2

    const-string v3, "end"

    const-wide v4, 0x10500000002L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 270
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 271
    return-void
.end method

.method public static blacklist writePrintAttributes(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "proto"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J
    .param p5, "attributes"    # Landroid/print/PrintAttributes;

    .line 211
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 213
    .local v0, "token":J
    invoke-virtual {p5}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v8

    .line 214
    .local v8, "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    if-eqz v8, :cond_0

    .line 215
    const-wide v5, 0x10b00000001L

    const-string/jumbo v4, "media_size"

    move-object v2, p0

    move-object v3, p1

    move-object v7, v8

    invoke-static/range {v2 .. v7}, Lcom/android/internal/print/DumpUtils;->writeMediaSize(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes$MediaSize;)V

    .line 216
    const-wide v2, 0x10800000002L

    invoke-virtual {p5}, Landroid/print/PrintAttributes;->isPortrait()Z

    move-result v4

    const-string/jumbo v5, "is_portrait"

    invoke-virtual {p1, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 219
    :cond_0
    invoke-virtual {p5}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    move-result-object v2

    .line 220
    .local v2, "res":Landroid/print/PrintAttributes$Resolution;
    if-eqz v2, :cond_1

    .line 221
    const-wide v3, 0x10b00000003L

    const-string/jumbo v5, "resolution"

    invoke-static {p1, v5, v3, v4, v2}, Lcom/android/internal/print/DumpUtils;->writeResolution(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes$Resolution;)V

    .line 224
    :cond_1
    invoke-virtual {p5}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v3

    .line 225
    .local v3, "minMargins":Landroid/print/PrintAttributes$Margins;
    if-eqz v3, :cond_2

    .line 226
    const-wide v4, 0x10b00000004L

    const-string/jumbo v6, "min_margings"

    invoke-static {p1, v6, v4, v5, v3}, Lcom/android/internal/print/DumpUtils;->writeMargins(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes$Margins;)V

    .line 229
    :cond_2
    const-wide v4, 0x10e00000005L

    invoke-virtual {p5}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v6

    const-string v7, "color_mode"

    invoke-virtual {p1, v7, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 230
    const-wide v4, 0x10e00000006L

    invoke-virtual {p5}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result v6

    const-string v7, "duplex_mode"

    invoke-virtual {p1, v7, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 231
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 232
    return-void
.end method

.method public static blacklist writePrintDocumentInfo(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintDocumentInfo;)V
    .locals 9
    .param p0, "proto"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "info"    # Landroid/print/PrintDocumentInfo;

    .line 244
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v6

    .line 245
    .local v6, "token":J
    invoke-virtual {p4}, Landroid/print/PrintDocumentInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "name"

    const-wide v2, 0x10900000001L

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 247
    invoke-virtual {p4}, Landroid/print/PrintDocumentInfo;->getPageCount()I

    move-result v8

    .line 248
    .local v8, "pageCount":I
    const/4 v0, -0x1

    if-eq v8, v0, :cond_0

    .line 249
    const-wide v0, 0x10500000002L

    const-string/jumbo v2, "page_count"

    invoke-virtual {p0, v2, v0, v1, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 252
    :cond_0
    const-wide v0, 0x10500000003L

    invoke-virtual {p4}, Landroid/print/PrintDocumentInfo;->getContentType()I

    move-result v2

    const-string v3, "content_type"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 253
    const-wide v2, 0x10300000004L

    invoke-virtual {p4}, Landroid/print/PrintDocumentInfo;->getDataSize()J

    move-result-wide v4

    const-string v1, "data_size"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    .line 254
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 255
    return-void
.end method

.method public static blacklist writePrintJobInfo(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintJobInfo;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "proto"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J
    .param p5, "printJobInfo"    # Landroid/print/PrintJobInfo;

    .line 285
    move-object/from16 v6, p1

    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v7

    .line 286
    .local v7, "token":J
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "label"

    const-wide v2, 0x10900000001L

    invoke-virtual {v6, v1, v2, v3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 288
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v9

    .line 289
    .local v9, "printJobId":Landroid/print/PrintJobId;
    if-eqz v9, :cond_0

    .line 290
    const-wide v0, 0x10900000002L

    .line 291
    invoke-virtual {v9}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 290
    const-string/jumbo v3, "print_job_id"

    invoke-virtual {v6, v3, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 294
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getState()I

    move-result v10

    .line 295
    .local v10, "state":I
    const/4 v11, 0x0

    const-wide v0, 0x10e00000003L

    const-string/jumbo v2, "state"

    const/4 v12, 0x1

    if-lt v10, v12, :cond_1

    const/4 v3, 0x7

    if-gt v10, v3, :cond_1

    .line 296
    invoke-virtual {v6, v2, v0, v1, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {v6, v2, v0, v1, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 301
    :goto_0
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getPrinterId()Landroid/print/PrinterId;

    move-result-object v13

    .line 302
    .local v13, "printer":Landroid/print/PrinterId;
    if-eqz v13, :cond_2

    .line 303
    const-wide v0, 0x10b00000004L

    const-string/jumbo v2, "printer"

    invoke-static {v6, v2, v0, v1, v13}, Lcom/android/internal/print/DumpUtils;->writePrinterId(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterId;)V

    .line 306
    :cond_2
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getTag()Ljava/lang/String;

    move-result-object v14

    .line 307
    .local v14, "tag":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 308
    const-wide v0, 0x10900000005L

    const-string/jumbo v2, "tag"

    invoke-virtual {v6, v2, v0, v1, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 311
    :cond_3
    const-wide v2, 0x10300000006L

    .line 312
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v4

    .line 311
    const-string v1, "creation_time"

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    .line 314
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getAttributes()Landroid/print/PrintAttributes;

    move-result-object v15

    .line 315
    .local v15, "attributes":Landroid/print/PrintAttributes;
    if-eqz v15, :cond_4

    .line 316
    const-wide v3, 0x10b00000007L

    const-string v2, "attributes"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v5, v15

    invoke-static/range {v0 .. v5}, Lcom/android/internal/print/DumpUtils;->writePrintAttributes(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes;)V

    .line 320
    :cond_4
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getDocumentInfo()Landroid/print/PrintDocumentInfo;

    move-result-object v0

    .line 321
    .local v0, "docInfo":Landroid/print/PrintDocumentInfo;
    if-eqz v0, :cond_5

    .line 322
    const-wide v1, 0x10b00000008L

    const-string v3, "document_info"

    invoke-static {v6, v3, v1, v2, v0}, Lcom/android/internal/print/DumpUtils;->writePrintDocumentInfo(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintDocumentInfo;)V

    .line 326
    :cond_5
    const-wide v1, 0x10800000009L

    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v3

    const-string/jumbo v4, "is_canceling"

    invoke-virtual {v6, v4, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 328
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getPages()[Landroid/print/PageRange;

    move-result-object v1

    .line 329
    .local v1, "pages":[Landroid/print/PageRange;
    if-eqz v1, :cond_6

    .line 330
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_6

    .line 331
    const-wide v3, 0x20b0000000aL

    aget-object v5, v1, v2

    const-string/jumbo v11, "pages"

    invoke-static {v6, v11, v3, v4, v5}, Lcom/android/internal/print/DumpUtils;->writePageRange(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PageRange;)V

    .line 330
    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x0

    goto :goto_1

    .line 335
    .end local v2    # "i":I
    :cond_6
    const-wide v2, 0x1080000000bL

    .line 336
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getAdvancedOptions()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_7

    move v11, v12

    goto :goto_2

    :cond_7
    const/4 v11, 0x0

    .line 335
    :goto_2
    const-string v4, "has_advanced_options"

    invoke-virtual {v6, v4, v2, v3, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 337
    const-wide v2, 0x1020000000cL

    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getProgress()F

    move-result v4

    const-string/jumbo v5, "progress"

    invoke-virtual {v6, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JF)V

    .line 339
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v3, p5

    invoke-virtual {v3, v2}, Landroid/print/PrintJobInfo;->getStatus(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 340
    .local v2, "status":Ljava/lang/CharSequence;
    if-eqz v2, :cond_8

    .line 341
    const-wide v4, 0x1090000000dL

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "status"

    invoke-virtual {v6, v12, v4, v5, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 344
    :cond_8
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 345
    return-void
.end method

.method public static blacklist writePrinterCapabilities(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterCapabilitiesInfo;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "proto"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J
    .param p5, "cap"    # Landroid/print/PrinterCapabilitiesInfo;

    .line 76
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 77
    .local v0, "token":J
    nop

    .line 78
    invoke-virtual {p5}, Landroid/print/PrinterCapabilitiesInfo;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v2

    .line 77
    const-string/jumbo v3, "min_margins"

    const-wide v4, 0x10b00000001L

    invoke-static {p1, v3, v4, v5, v2}, Lcom/android/internal/print/DumpUtils;->writeMargins(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes$Margins;)V

    .line 80
    invoke-virtual {p5}, Landroid/print/PrinterCapabilitiesInfo;->getMediaSizes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 81
    .local v2, "numMediaSizes":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 82
    const-wide v7, 0x20b00000002L

    .line 83
    invoke-virtual {p5}, Landroid/print/PrinterCapabilitiesInfo;->getMediaSizes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/print/PrintAttributes$MediaSize;

    .line 82
    const-string/jumbo v6, "media_sizes"

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lcom/android/internal/print/DumpUtils;->writeMediaSize(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes$MediaSize;)V

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p5}, Landroid/print/PrinterCapabilitiesInfo;->getResolutions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 87
    .local v3, "numResolutions":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 88
    const-wide v5, 0x20b00000003L

    .line 89
    invoke-virtual {p5}, Landroid/print/PrinterCapabilitiesInfo;->getResolutions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/print/PrintAttributes$Resolution;

    .line 88
    const-string/jumbo v8, "resolutions"

    invoke-static {p1, v8, v5, v6, v7}, Lcom/android/internal/print/DumpUtils;->writeResolution(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes$Resolution;)V

    .line 87
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 92
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {p5}, Landroid/print/PrinterCapabilitiesInfo;->getColorModes()I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    const-wide v6, 0x20e00000004L

    const-string v8, "color_modes"

    if-eqz v4, :cond_2

    .line 93
    invoke-virtual {p1, v8, v6, v7, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 96
    :cond_2
    invoke-virtual {p5}, Landroid/print/PrinterCapabilitiesInfo;->getColorModes()I

    move-result v4

    const/4 v9, 0x2

    and-int/2addr v4, v9

    if-eqz v4, :cond_3

    .line 97
    invoke-virtual {p1, v8, v6, v7, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 101
    :cond_3
    invoke-virtual {p5}, Landroid/print/PrinterCapabilitiesInfo;->getDuplexModes()I

    move-result v4

    and-int/2addr v4, v5

    const-wide v6, 0x20e00000005L

    const-string v8, "duplex_modes"

    if-eqz v4, :cond_4

    .line 102
    invoke-virtual {p1, v8, v6, v7, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 105
    :cond_4
    invoke-virtual {p5}, Landroid/print/PrinterCapabilitiesInfo;->getDuplexModes()I

    move-result v4

    and-int/2addr v4, v9

    if-eqz v4, :cond_5

    .line 106
    invoke-virtual {p1, v8, v6, v7, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 109
    :cond_5
    invoke-virtual {p5}, Landroid/print/PrinterCapabilitiesInfo;->getDuplexModes()I

    move-result v4

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_6

    .line 110
    invoke-virtual {p1, v8, v6, v7, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 114
    :cond_6
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 115
    return-void
.end method

.method public static blacklist writePrinterId(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterId;)V
    .locals 6
    .param p0, "proto"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "printerId"    # Landroid/print/PrinterId;

    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 59
    .local v0, "token":J
    nop

    .line 60
    invoke-virtual {p4}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v2

    .line 59
    const-string/jumbo v3, "service_name"

    const-wide v4, 0x10b00000001L

    invoke-static {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 61
    invoke-virtual {p4}, Landroid/print/PrinterId;->getLocalId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "local_id"

    const-wide v4, 0x10900000002L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 62
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 63
    return-void
.end method

.method public static blacklist writePrinterInfo(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterInfo;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "proto"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J
    .param p5, "info"    # Landroid/print/PrinterInfo;

    .line 129
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v6

    .line 130
    .local v6, "token":J
    invoke-virtual {p5}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v0

    const-string v1, "id"

    const-wide v2, 0x10b00000001L

    invoke-static {p1, v1, v2, v3, v0}, Lcom/android/internal/print/DumpUtils;->writePrinterId(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterId;)V

    .line 131
    invoke-virtual {p5}, Landroid/print/PrinterInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "name"

    const-wide v2, 0x10900000002L

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 132
    invoke-virtual {p5}, Landroid/print/PrinterInfo;->getStatus()I

    move-result v0

    const-string/jumbo v1, "status"

    const-wide v2, 0x10e00000003L

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 133
    invoke-virtual {p5}, Landroid/print/PrinterInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v1, "description"

    const-wide v2, 0x10900000004L

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 135
    invoke-virtual {p5}, Landroid/print/PrinterInfo;->getCapabilities()Landroid/print/PrinterCapabilitiesInfo;

    move-result-object v8

    .line 136
    .local v8, "cap":Landroid/print/PrinterCapabilitiesInfo;
    if-eqz v8, :cond_0

    .line 137
    const-wide v3, 0x10b00000005L

    const-string v2, "capabilities"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v8

    invoke-static/range {v0 .. v5}, Lcom/android/internal/print/DumpUtils;->writePrinterCapabilities(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterCapabilitiesInfo;)V

    .line 141
    :cond_0
    invoke-virtual {p1, v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 142
    return-void
.end method

.method public static blacklist writeResolution(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes$Resolution;)V
    .locals 6
    .param p0, "proto"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "res"    # Landroid/print/PrintAttributes$Resolution;

    .line 173
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 174
    .local v0, "token":J
    invoke-virtual {p4}, Landroid/print/PrintAttributes$Resolution;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    const-wide v4, 0x10900000001L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 175
    invoke-virtual {p4}, Landroid/print/PrintAttributes$Resolution;->getLabel()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "label"

    const-wide v4, 0x10900000002L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 176
    invoke-virtual {p4}, Landroid/print/PrintAttributes$Resolution;->getHorizontalDpi()I

    move-result v2

    const-string v3, "horizontal_DPI"

    const-wide v4, 0x10500000003L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 177
    invoke-virtual {p4}, Landroid/print/PrintAttributes$Resolution;->getVerticalDpi()I

    move-result v2

    const-string/jumbo v3, "veritical_DPI"

    const-wide v4, 0x10500000004L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 178
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 179
    return-void
.end method
