.class public Landroid/content/ClipData$Item;
.super Ljava/lang/Object;
.source "ClipData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ClipData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private blacklist mActivityInfo:Landroid/content/pm/ActivityInfo;

.field final greylist-max-o mHtmlText:Ljava/lang/String;

.field final greylist-max-o mIntent:Landroid/content/Intent;

.field final greylist-max-o mText:Ljava/lang/CharSequence;

.field private blacklist mTextLinks:Landroid/view/textclassifier/TextLinks;

.field greylist-max-p mUri:Landroid/net/Uri;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivityInfo(Landroid/content/ClipData$Item;)Landroid/content/pm/ActivityInfo;
    .locals 0

    iget-object p0, p0, Landroid/content/ClipData$Item;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextLinks(Landroid/content/ClipData$Item;)Landroid/view/textclassifier/TextLinks;
    .locals 0

    iget-object p0, p0, Landroid/content/ClipData$Item;->mTextLinks:Landroid/view/textclassifier/TextLinks;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/ClipData$Item;)V
    .locals 1
    .param p1, "other"    # Landroid/content/ClipData$Item;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iget-object v0, p1, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 220
    iget-object v0, p1, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 221
    iget-object v0, p1, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 222
    iget-object v0, p1, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 223
    iget-object v0, p1, Landroid/content/ClipData$Item;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 224
    iget-object v0, p1, Landroid/content/ClipData$Item;->mTextLinks:Landroid/view/textclassifier/TextLinks;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mTextLinks:Landroid/view/textclassifier/TextLinks;

    .line 225
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 258
    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 259
    iput-object p1, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 260
    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 261
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 268
    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 269
    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 270
    iput-object p1, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 271
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 233
    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 234
    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 235
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "uri"    # Landroid/net/Uri;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 280
    iput-object p2, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 281
    iput-object p3, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 282
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "htmlText"    # Ljava/lang/String;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 248
    iput-object p2, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 250
    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 251
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "htmlText"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "uri"    # Landroid/net/Uri;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Plain text must be supplied if HTML text is supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 296
    iput-object p2, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 297
    iput-object p3, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 298
    iput-object p4, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 299
    return-void
.end method

.method private greylist-max-o coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "styled"    # Z

    .line 545
    const-string v0, "ClipData"

    iget-object v1, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    const-string v2, ""

    if-eqz v1, :cond_15

    .line 550
    const/4 v1, 0x0

    .line 552
    .local v1, "types":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    const-string/jumbo v5, "text/*"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 555
    goto :goto_0

    .line 553
    :catch_0
    move-exception v3

    .line 556
    :goto_0
    const/4 v3, 0x0

    .line 557
    .local v3, "hasHtml":Z
    const/4 v4, 0x0

    .line 558
    .local v4, "hasText":Z
    const-string/jumbo v5, "text/html"

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    .line 559
    array-length v7, v1

    move v8, v6

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v1, v8

    .line 560
    .local v9, "type":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 561
    const/4 v3, 0x1

    goto :goto_2

    .line 562
    :cond_0
    const-string/jumbo v10, "text/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 563
    const/4 v4, 0x1

    .line 559
    .end local v9    # "type":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 569
    :cond_2
    if-nez v3, :cond_3

    if-eqz v4, :cond_10

    .line 570
    :cond_3
    const/4 v7, 0x0

    .line 573
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 575
    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    const-string/jumbo v5, "text/plain"

    :goto_3
    const/4 v10, 0x0

    .line 574
    invoke-virtual {v8, v9, v5, v10}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    .line 576
    .local v5, "descr":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v8

    move-object v7, v8

    .line 577
    new-instance v8, Ljava/io/InputStreamReader;

    const-string v9, "UTF-8"

    invoke-direct {v8, v7, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 580
    .local v8, "reader":Ljava/io/InputStreamReader;
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v10, 0x80

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 581
    .local v9, "builder":Ljava/lang/StringBuilder;
    const/16 v10, 0x2000

    new-array v10, v10, [C

    .line 583
    .local v10, "buffer":[C
    :goto_4
    invoke-virtual {v8, v10}, Ljava/io/InputStreamReader;->read([C)I

    move-result v11

    move v12, v11

    .local v12, "len":I
    if-lez v11, :cond_5

    .line 584
    invoke-virtual {v9, v10, v6, v12}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 586
    :cond_5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    .local v6, "text":Ljava/lang/String;
    if-eqz v3, :cond_b

    .line 588
    if-eqz p2, :cond_9

    .line 592
    :try_start_2
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 593
    .local v0, "newText":Ljava/lang/CharSequence;
    if-eqz v0, :cond_6

    move-object v2, v0

    goto :goto_5

    :cond_6
    move-object v2, v6

    .line 626
    :goto_5
    if-eqz v7, :cond_7

    .line 628
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 630
    goto :goto_6

    .line 629
    :catch_1
    move-exception v11

    .line 593
    :cond_7
    :goto_6
    return-object v2

    .line 594
    .end local v0    # "newText":Ljava/lang/CharSequence;
    :catch_2
    move-exception v0

    .line 595
    .local v0, "e":Ljava/lang/RuntimeException;
    nop

    .line 626
    if-eqz v7, :cond_8

    .line 628
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 630
    goto :goto_7

    .line 629
    :catch_3
    move-exception v2

    .line 595
    :cond_8
    :goto_7
    return-object v6

    .line 600
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_9
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 626
    if-eqz v7, :cond_a

    .line 628
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 630
    goto :goto_8

    .line 629
    :catch_4
    move-exception v2

    .line 600
    :cond_a
    :goto_8
    return-object v0

    .line 603
    :cond_b
    if-eqz p2, :cond_d

    .line 606
    nop

    .line 626
    if-eqz v7, :cond_c

    .line 628
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 630
    goto :goto_9

    .line 629
    :catch_5
    move-exception v0

    .line 606
    :cond_c
    :goto_9
    return-object v6

    .line 610
    :cond_d
    :try_start_8
    invoke-static {v6}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 626
    if-eqz v7, :cond_e

    .line 628
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 630
    goto :goto_a

    .line 629
    :catch_6
    move-exception v2

    .line 610
    :cond_e
    :goto_a
    return-object v0

    .line 626
    .end local v5    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v6    # "text":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/InputStreamReader;
    .end local v9    # "builder":Ljava/lang/StringBuilder;
    .end local v10    # "buffer":[C
    .end local v12    # "len":I
    :catchall_0
    move-exception v0

    goto :goto_f

    .line 620
    :catch_7
    move-exception v2

    .line 622
    .local v2, "e":Ljava/io/IOException;
    :try_start_a
    const-string v5, "Failure loading text"

    invoke-static {v0, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 623
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 626
    if-eqz v7, :cond_f

    .line 628
    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 630
    goto :goto_b

    .line 629
    :catch_8
    move-exception v5

    .line 623
    :cond_f
    :goto_b
    return-object v0

    .line 616
    .end local v2    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 626
    if-eqz v7, :cond_10

    .line 628
    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 630
    :goto_c
    goto :goto_d

    .line 629
    :catch_a
    move-exception v0

    goto :goto_c

    .line 613
    :catch_b
    move-exception v5

    .line 614
    .local v5, "e":Ljava/lang/SecurityException;
    :try_start_d
    const-string v6, "Failure opening stream"

    invoke-static {v0, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 626
    nop

    .end local v5    # "e":Ljava/lang/SecurityException;
    if-eqz v7, :cond_10

    .line 628
    :try_start_e
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_c

    .line 637
    .end local v7    # "stream":Ljava/io/FileInputStream;
    :cond_10
    :goto_d
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, "scheme":Ljava/lang/String;
    const-string v5, "content"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 639
    const-string v5, "android.resource"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 640
    const-string v5, "file"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_e

    .line 644
    :cond_11
    if-eqz p2, :cond_12

    .line 645
    iget-object v2, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/content/ClipData$Item;->uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 647
    :cond_12
    iget-object v2, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/content/ClipData$Item;->uriToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 641
    :cond_13
    :goto_e
    return-object v2

    .line 626
    .end local v0    # "scheme":Ljava/lang/String;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :goto_f
    if-eqz v7, :cond_14

    .line 628
    :try_start_f
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    .line 630
    goto :goto_10

    .line 629
    :catch_c
    move-exception v2

    .line 632
    :cond_14
    :goto_10
    throw v0

    .line 653
    .end local v1    # "types":[Ljava/lang/String;
    .end local v3    # "hasHtml":Z
    .end local v4    # "hasText":Z
    .end local v7    # "stream":Ljava/io/FileInputStream;
    :cond_15
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_17

    .line 654
    const/4 v1, 0x1

    if-eqz p2, :cond_16

    .line 655
    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ClipData$Item;->uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 657
    :cond_16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ClipData$Item;->uriToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 662
    :cond_17
    return-object v2
.end method

.method private greylist-max-o uriToHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 667
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "<a href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-static {p1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-static {p1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    const-string v1, "</a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    .line 676
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 677
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 678
    new-instance v1, Landroid/text/style/URLSpan;

    invoke-direct {v1, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 680
    return-object v0
.end method


# virtual methods
.method public whitelist coerceToHtmlText(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 525
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "htmlText":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 527
    return-object v0

    .line 531
    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 532
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 533
    instance-of v2, v1, Landroid/text/Spanned;

    if-eqz v2, :cond_1

    .line 534
    move-object v2, v1

    check-cast v2, Landroid/text/Spanned;

    invoke-static {v2}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 536
    :cond_1
    invoke-static {v1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 539
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/content/ClipData$Item;->coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 540
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public whitelist coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 474
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 475
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 476
    return-object v0

    .line 478
    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, "htmlText":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 481
    :try_start_0
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    .local v2, "newText":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    .line 483
    return-object v2

    .line 487
    .end local v2    # "newText":Ljava/lang/CharSequence;
    :cond_1
    goto :goto_0

    .line 485
    :catch_0
    move-exception v2

    .line 490
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 491
    return-object v0

    .line 493
    :cond_3
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/content/ClipData$Item;->coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public whitelist coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 392
    const-string v0, "ClipData"

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 393
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 394
    return-object v1

    .line 398
    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 399
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, ""

    if-eqz v2, :cond_5

    .line 403
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 404
    .local v4, "resolver":Landroid/content/ContentResolver;
    const/4 v5, 0x0

    .line 405
    .local v5, "descr":Landroid/content/res/AssetFileDescriptor;
    const/4 v6, 0x0

    .line 406
    .local v6, "stream":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 410
    .local v7, "reader":Ljava/io/InputStreamReader;
    :try_start_0
    const-string/jumbo v8, "text/*"

    const/4 v9, 0x0

    invoke-virtual {v4, v2, v8, v9}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v8

    .line 416
    goto :goto_0

    .line 437
    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 413
    :catch_0
    move-exception v8

    goto :goto_0

    .line 411
    :catch_1
    move-exception v8

    .line 412
    .local v8, "e":Ljava/lang/SecurityException;
    :try_start_1
    const-string v9, "Failure opening stream"

    invoke-static {v0, v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    nop

    .line 417
    .end local v8    # "e":Ljava/lang/SecurityException;
    :goto_0
    if-eqz v5, :cond_2

    .line 419
    :try_start_2
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v6, v3

    .line 420
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v3, v6, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v7, v3

    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v8, 0x80

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 424
    .local v3, "builder":Ljava/lang/StringBuilder;
    const/16 v8, 0x2000

    new-array v8, v8, [C

    .line 426
    .local v8, "buffer":[C
    :goto_1
    invoke-virtual {v7, v8}, Ljava/io/InputStreamReader;->read([C)I

    move-result v9

    move v10, v9

    .local v10, "len":I
    if-lez v9, :cond_1

    .line 427
    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 429
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 437
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 438
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 439
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 429
    return-object v0

    .line 430
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v8    # "buffer":[C
    .end local v10    # "len":I
    :catch_2
    move-exception v3

    .line 432
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    const-string v8, "Failure loading text"

    invoke-static {v0, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 437
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 438
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 439
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 433
    return-object v0

    .line 437
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 438
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 439
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 440
    nop

    .line 444
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "scheme":Ljava/lang/String;
    const-string v8, "content"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 446
    const-string v8, "android.resource"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 447
    const-string v8, "file"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    .line 450
    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 448
    :cond_4
    :goto_2
    return-object v3

    .line 437
    .end local v0    # "scheme":Ljava/lang/String;
    :goto_3
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 438
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 439
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 440
    throw v0

    .line 455
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .end local v7    # "reader":Ljava/io/InputStreamReader;
    :cond_5
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 456
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_6

    .line 457
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 461
    :cond_6
    return-object v3
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 744
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 746
    .local v8, "token":J
    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 747
    const-wide v1, 0x10900000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_0

    .line 748
    :cond_0
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 749
    const-wide v1, 0x10900000002L

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_0

    .line 750
    :cond_1
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 751
    const-wide v1, 0x10900000003L

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_0

    .line 752
    :cond_2
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 753
    const-wide v2, 0x10b00000004L

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    goto :goto_0

    .line 755
    :cond_3
    const-wide v0, 0x10800000005L

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 758
    :goto_0
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 759
    return-void
.end method

.method public blacklist getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 1

    .line 334
    iget-object v0, p0, Landroid/content/ClipData$Item;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public whitelist getHtmlText()Ljava/lang/String;
    .locals 1

    .line 312
    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .locals 1

    .line 319
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .locals 1

    .line 305
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTextLinks()Landroid/view/textclassifier/TextLinks;
    .locals 1

    .line 358
    iget-object v0, p0, Landroid/content/ClipData$Item;->mTextLinks:Landroid/view/textclassifier/TextLinks;

    return-object v0
.end method

.method public whitelist getUri()Landroid/net/Uri;
    .locals 1

    .line 326
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist setActivityInfo(Landroid/content/pm/ActivityInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 342
    iput-object p1, p0, Landroid/content/ClipData$Item;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 343
    return-void
.end method

.method public blacklist setTextLinks(Landroid/view/textclassifier/TextLinks;)V
    .locals 0
    .param p1, "textLinks"    # Landroid/view/textclassifier/TextLinks;

    .line 365
    iput-object p1, p0, Landroid/content/ClipData$Item;->mTextLinks:Landroid/view/textclassifier/TextLinks;

    .line 366
    return-void
.end method

.method public blacklist toShortString(Ljava/lang/StringBuilder;Z)V
    .locals 8
    .param p1, "b"    # Ljava/lang/StringBuilder;
    .param p2, "redactContent"    # Z

    .line 701
    const/4 v0, 0x1

    .line 702
    .local v0, "first":Z
    iget-object v1, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    const/16 v2, 0x29

    if-eqz v1, :cond_1

    .line 703
    const/4 v0, 0x0

    .line 704
    if-eqz p2, :cond_0

    .line 705
    const-string v1, "H("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 707
    :cond_0
    const-string v1, "H:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    const/16 v3, 0x20

    if-eqz v1, :cond_4

    .line 711
    if-nez v0, :cond_2

    .line 712
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 714
    :cond_2
    const/4 v0, 0x0

    .line 715
    if-eqz p2, :cond_3

    .line 716
    const-string v1, "T("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 718
    :cond_3
    const-string v1, "T:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 721
    :cond_4
    :goto_1
    iget-object v1, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_7

    .line 722
    if-nez v0, :cond_5

    .line 723
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 725
    :cond_5
    const/4 v0, 0x0

    .line 726
    if-eqz p2, :cond_6

    .line 727
    const-string v1, "U("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 729
    :cond_6
    const-string v1, "U:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 732
    :cond_7
    :goto_2
    iget-object v1, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_9

    .line 733
    if-nez v0, :cond_8

    .line 734
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 736
    :cond_8
    const/4 v0, 0x0

    .line 737
    const-string v1, "I:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    iget-object v2, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 740
    :cond_9
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 687
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "ClipData.Item { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/ClipData$Item;->toShortString(Ljava/lang/StringBuilder;Z)V

    .line 689
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
