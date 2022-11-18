.class public final Landroid/webkit/URLUtil;
.super Ljava/lang/Object;
.source "URLUtil.java"


# static fields
.field static final greylist-max-o ASSET_BASE:Ljava/lang/String; = "file:///android_asset/"

.field static final greylist-max-o CONTENT_BASE:Ljava/lang/String; = "content:"

.field private static final greylist-max-o CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field static final greylist-max-o FILE_BASE:Ljava/lang/String; = "file:"

.field private static final greylist-max-o LOGTAG:Ljava/lang/String; = "webkit"

.field static final greylist-max-o PROXY_BASE:Ljava/lang/String; = "file:///cookieless_proxy/"

.field static final greylist-max-o RESOURCE_BASE:Ljava/lang/String; = "file:///android_res/"

.field private static final greylist-max-o TRACE:Z = false


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 391
    nop

    .line 392
    const-string v0, "attachment;\\s*filename\\s*=\\s*(\"?)([^\"]*)\\1\\s*$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/URLUtil;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    .line 391
    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "inQuery"    # Ljava/lang/String;
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "queryPlaceHolder"    # Ljava/lang/String;

    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 92
    .local v0, "placeHolderIndex":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 93
    return-object v1

    .line 97
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v2, "buffer":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :try_start_0
    const-string/jumbo v3, "utf-8"

    invoke-static {p0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "query":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    nop

    .line 107
    nop

    .line 108
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    .line 107
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 103
    .end local v3    # "query":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 104
    .local v3, "ex":Ljava/io/UnsupportedEncodingException;
    return-object v1
.end method

.method public static whitelist decode([B)[B
    .locals 7
    .param p0, "url"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 114
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 115
    new-array v0, v1, [B

    return-object v0

    .line 119
    :cond_0
    array-length v0, p0

    new-array v0, v0, [B

    .line 121
    .local v0, "tempData":[B
    const/4 v2, 0x0

    .line 122
    .local v2, "tempCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_3

    .line 123
    aget-byte v4, p0, v3

    .line 124
    .local v4, "b":B
    const/16 v5, 0x25

    if-ne v4, v5, :cond_2

    .line 125
    array-length v5, p0

    sub-int/2addr v5, v3

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    .line 126
    add-int/lit8 v5, v3, 0x1

    aget-byte v5, p0, v5

    invoke-static {v5}, Landroid/webkit/URLUtil;->parseHex(B)I

    move-result v5

    mul-int/lit8 v5, v5, 0x10

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, p0, v6

    .line 127
    invoke-static {v6}, Landroid/webkit/URLUtil;->parseHex(B)I

    move-result v6

    add-int/2addr v5, v6

    int-to-byte v4, v5

    .line 128
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 130
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid format"

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_2
    :goto_1
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "tempCount":I
    .local v5, "tempCount":I
    aput-byte v4, v0, v2

    .line 122
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_0

    .line 135
    .end local v3    # "i":I
    .end local v5    # "tempCount":I
    .restart local v2    # "tempCount":I
    :cond_3
    new-array v3, v2, [B

    .line 136
    .local v3, "retData":[B
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    return-object v3
.end method

.method public static final whitelist guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "contentDisposition"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, "filename":Ljava/lang/String;
    const/4 v1, 0x0

    .line 313
    .local v1, "extension":Ljava/lang/String;
    const/16 v2, 0x2f

    if-eqz p1, :cond_0

    .line 314
    invoke-static {p1}, Landroid/webkit/URLUtil;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 317
    .local v3, "index":I
    if-lez v3, :cond_0

    .line 318
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 324
    .end local v3    # "index":I
    :cond_0
    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 325
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 326
    .local v4, "decodedUrl":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 327
    const/16 v5, 0x3f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 329
    .local v5, "queryIndex":I
    if-lez v5, :cond_1

    .line 330
    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 332
    :cond_1
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 333
    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 334
    .local v2, "index":I
    if-lez v2, :cond_2

    .line 335
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 342
    .end local v2    # "index":I
    .end local v4    # "decodedUrl":Ljava/lang/String;
    .end local v5    # "queryIndex":I
    :cond_2
    if-nez v0, :cond_3

    .line 343
    const-string v0, "downloadfile"

    .line 348
    :cond_3
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 349
    .local v4, "dotIndex":I
    const-string v5, "."

    if-gez v4, :cond_7

    .line 350
    if-eqz p2, :cond_4

    .line 351
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 352
    if-eqz v1, :cond_4

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    :cond_4
    if-nez v1, :cond_a

    .line 357
    if-eqz p2, :cond_6

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "text/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 358
    const-string/jumbo v2, "text/html"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 359
    const-string v1, ".html"

    goto :goto_0

    .line 361
    :cond_5
    const-string v1, ".txt"

    goto :goto_0

    .line 364
    :cond_6
    const-string v1, ".bin"

    goto :goto_0

    .line 368
    :cond_7
    if-eqz p2, :cond_8

    .line 371
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 372
    .local v2, "lastDotIndex":I
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    .line 373
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 372
    invoke-virtual {v6, v7}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 374
    .local v6, "typeFromExt":Ljava/lang/String;
    if-eqz v6, :cond_8

    invoke-virtual {v6, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 375
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 376
    if-eqz v1, :cond_8

    .line 377
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    .end local v2    # "lastDotIndex":I
    .end local v6    # "typeFromExt":Ljava/lang/String;
    :cond_8
    if-nez v1, :cond_9

    .line 382
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 384
    :cond_9
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 387
    :cond_a
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static whitelist guessUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "inUrl"    # Ljava/lang/String;

    .line 52
    move-object v0, p0

    .line 57
    .local v0, "retVal":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    .line 58
    :cond_0
    const-string v1, "about:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    .line 60
    :cond_1
    const-string v1, "data:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p0

    .line 62
    :cond_2
    const-string v1, "file:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object p0

    .line 64
    :cond_3
    const-string/jumbo v1, "javascript:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object p0

    .line 67
    :cond_4
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 68
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 72
    :cond_5
    :try_start_0
    new-instance v1, Landroid/net/WebAddress;

    invoke-direct {v1, p0}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .local v1, "webAddress":Landroid/net/WebAddress;
    nop

    .line 82
    invoke-virtual {v1}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "www."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/WebAddress;->setHost(Ljava/lang/String;)V

    .line 86
    :cond_6
    invoke-virtual {v1}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 73
    .end local v1    # "webAddress":Landroid/net/WebAddress;
    :catch_0
    move-exception v1

    .line 78
    .local v1, "ex":Landroid/net/ParseException;
    return-object v0
.end method

.method public static whitelist isAboutUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .line 214
    if-eqz p0, :cond_0

    const-string v0, "about:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist isAssetUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .line 179
    if-eqz p0, :cond_0

    const-string v0, "file:///android_asset/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist isContentUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .line 263
    if-eqz p0, :cond_0

    const-string v0, "content:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist isCookielessProxyUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
    if-eqz p0, :cond_0

    const-string v0, "file:///cookieless_proxy/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist isDataUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .line 221
    if-eqz p0, :cond_0

    const-string v0, "data:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist isFileUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .line 205
    if-eqz p0, :cond_0

    const-string v0, "file:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "file:///android_asset/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    const-string v0, "file:///cookieless_proxy/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 205
    :goto_0
    return v0
.end method

.method public static whitelist isHttpUrl(Ljava/lang/String;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .line 235
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 236
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    const/4 v1, 0x7

    .line 237
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 235
    :goto_0
    return v0
.end method

.method public static whitelist isHttpsUrl(Ljava/lang/String;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .line 244
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 245
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    const/16 v1, 0x8

    .line 246
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 244
    :goto_0
    return v0
.end method

.method public static whitelist isJavaScriptUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .line 228
    if-eqz p0, :cond_0

    const-string/jumbo v0, "javascript:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist isNetworkUrl(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .line 253
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    .line 254
    :cond_3
    :goto_0
    return v0
.end method

.method public static greylist isResourceUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .line 188
    if-eqz p0, :cond_0

    const-string v0, "file:///android_res/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist isValidUrl(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .line 270
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    invoke-static {p0}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 275
    invoke-static {p0}, Landroid/webkit/URLUtil;->isResourceUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 276
    invoke-static {p0}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 277
    invoke-static {p0}, Landroid/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 278
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 279
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 280
    invoke-static {p0}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 281
    invoke-static {p0}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 274
    :cond_2
    return v0

    .line 271
    :cond_3
    :goto_0
    return v0
.end method

.method static greylist parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "contentDisposition"    # Ljava/lang/String;

    .line 407
    :try_start_0
    sget-object v0, Landroid/webkit/URLUtil;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 408
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 413
    .end local v0    # "m":Ljava/util/regex/Matcher;
    :cond_0
    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 414
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist-max-o parseHex(B)I
    .locals 3
    .param p0, "b"    # B

    .line 168
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    return v0

    .line 169
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 170
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 172
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist stripAnchor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .line 288
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 289
    .local v0, "anchorIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 290
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 292
    :cond_0
    return-object p0
.end method

.method static greylist verifyURLEncoding(Ljava/lang/String;)Z
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 146
    .local v0, "count":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 147
    return v1

    .line 150
    :cond_0
    const/16 v2, 0x25

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 151
    .local v3, "index":I
    :goto_0
    if-ltz v3, :cond_2

    if-ge v3, v0, :cond_2

    .line 152
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_1

    .line 154
    add-int/lit8 v3, v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Landroid/webkit/URLUtil;->parseHex(B)I

    .line 155
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Landroid/webkit/URLUtil;->parseHex(B)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    nop

    .line 162
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    goto :goto_0

    .line 156
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    return v1

    .line 160
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    return v1

    .line 164
    :cond_2
    const/4 v1, 0x1

    return v1
.end method
