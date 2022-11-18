.class Landroid/media/TtmlParser;
.super Ljava/lang/Object;
.source "TtmlRenderer.java"


# static fields
.field private static final blacklist DEFAULT_FRAMERATE:I = 0x1e

.field private static final blacklist DEFAULT_SUBFRAMERATE:I = 0x1

.field private static final blacklist DEFAULT_TICKRATE:I = 0x1

.field static final blacklist TAG:Ljava/lang/String; = "TtmlParser"


# instance fields
.field private blacklist mCurrentRunId:J

.field private final blacklist mListener:Landroid/media/TtmlNodeListener;

.field private blacklist mParser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor blacklist <init>(Landroid/media/TtmlNodeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/TtmlNodeListener;

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object p1, p0, Landroid/media/TtmlParser;->mListener:Landroid/media/TtmlNodeListener;

    .line 367
    return-void
.end method

.method private blacklist extractAttribute(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/StringBuilder;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "i"    # I
    .param p3, "out"    # Ljava/lang/StringBuilder;

    .line 393
    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const-string v0, "=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v0, "\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    return-void
.end method

.method private blacklist isEndOfDoc()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 505
    iget-object v0, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static blacklist isSupportedTag(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .line 509
    const-string/jumbo v0, "tt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "head"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 510
    const-string v0, "body"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "div"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 511
    const-string v0, "p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "span"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 512
    const-string v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "style"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 513
    const-string v0, "styling"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "layout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 514
    const-string v0, "region"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "metadata"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 515
    const-string v0, "smpte:image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "smpte:data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 516
    const-string v0, "smpte:information"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 519
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 517
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist loadParser(Ljava/lang/String;)V
    .locals 3
    .param p1, "ttmlFragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 385
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 386
    .local v0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 387
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iput-object v1, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 388
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 389
    .local v1, "in":Ljava/io/StringReader;
    iget-object v2, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 390
    return-void
.end method

.method private blacklist parseNode(Landroid/media/TtmlNode;)Landroid/media/TtmlNode;
    .locals 22
    .param p1, "parent"    # Landroid/media/TtmlNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    move-object/from16 v0, p0

    move-object/from16 v12, p1

    iget-object v1, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v13

    .line 452
    .local v13, "eventType":I
    const/4 v1, 0x2

    if-eq v13, v1, :cond_0

    .line 453
    const/4 v1, 0x0

    return-object v1

    .line 455
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v1

    .line 456
    .local v14, "attrStr":Ljava/lang/StringBuilder;
    const-wide/16 v1, 0x0

    .line 457
    .local v1, "start":J
    const-wide v3, 0x7fffffffffffffffL

    .line 458
    .local v3, "end":J
    const-wide/16 v5, 0x0

    .line 459
    .local v5, "dur":J
    const/4 v7, 0x0

    move-wide v15, v5

    .end local v5    # "dur":J
    .local v7, "i":I
    .local v15, "dur":J
    :goto_0
    iget-object v5, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    if-ge v7, v5, :cond_4

    .line 460
    iget-object v5, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    .line 461
    .local v5, "attr":Ljava/lang/String;
    iget-object v6, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 463
    .local v6, "value":Ljava/lang/String;
    const-string v8, "^.*:"

    const-string v9, ""

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 464
    const-string v8, "begin"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/16 v9, 0x1e

    const/4 v10, 0x1

    if-eqz v8, :cond_1

    .line 465
    invoke-static {v6, v9, v10, v10}, Landroid/media/TtmlUtils;->parseTimeExpression(Ljava/lang/String;III)J

    move-result-wide v1

    goto :goto_1

    .line 467
    :cond_1
    const-string v8, "end"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 468
    invoke-static {v6, v9, v10, v10}, Landroid/media/TtmlUtils;->parseTimeExpression(Ljava/lang/String;III)J

    move-result-wide v3

    goto :goto_1

    .line 470
    :cond_2
    const-string v8, "dur"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 471
    invoke-static {v6, v9, v10, v10}, Landroid/media/TtmlUtils;->parseTimeExpression(Ljava/lang/String;III)J

    move-result-wide v8

    move-wide v15, v8

    .end local v15    # "dur":J
    .local v8, "dur":J
    goto :goto_1

    .line 474
    .end local v8    # "dur":J
    .restart local v15    # "dur":J
    :cond_3
    iget-object v8, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v8, v7, v14}, Landroid/media/TtmlParser;->extractAttribute(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/StringBuilder;)V

    .line 459
    .end local v5    # "attr":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 477
    .end local v7    # "i":I
    :cond_4
    const-wide v5, 0x7fffffffffffffffL

    if-eqz v12, :cond_6

    .line 478
    iget-wide v7, v12, Landroid/media/TtmlNode;->mStartTimeMs:J

    add-long/2addr v1, v7

    .line 479
    cmp-long v7, v3, v5

    if-eqz v7, :cond_5

    .line 480
    iget-wide v7, v12, Landroid/media/TtmlNode;->mStartTimeMs:J

    add-long/2addr v3, v7

    move-wide/from16 v17, v1

    goto :goto_2

    .line 479
    :cond_5
    move-wide/from16 v17, v1

    goto :goto_2

    .line 477
    :cond_6
    move-wide/from16 v17, v1

    .line 483
    .end local v1    # "start":J
    .local v17, "start":J
    :goto_2
    const-wide/16 v1, 0x0

    cmp-long v1, v15, v1

    if-lez v1, :cond_8

    .line 484
    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    .line 485
    const-string v1, "TtmlParser"

    const-string v2, "\'dur\' and \'end\' attributes are defined at the same time.\'end\' value is ignored."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_7
    add-long v3, v17, v15

    .line 490
    :cond_8
    if-eqz v12, :cond_9

    .line 493
    cmp-long v1, v3, v5

    if-nez v1, :cond_9

    iget-wide v1, v12, Landroid/media/TtmlNode;->mEndTimeMs:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_9

    iget-wide v1, v12, Landroid/media/TtmlNode;->mEndTimeMs:J

    cmp-long v1, v3, v1

    if-lez v1, :cond_9

    .line 496
    iget-wide v3, v12, Landroid/media/TtmlNode;->mEndTimeMs:J

    move-wide/from16 v19, v3

    goto :goto_3

    .line 499
    :cond_9
    move-wide/from16 v19, v3

    .end local v3    # "end":J
    .local v19, "end":J
    :goto_3
    new-instance v21, Landroid/media/TtmlNode;

    iget-object v1, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-wide v10, v0, Landroid/media/TtmlParser;->mCurrentRunId:J

    move-object/from16 v1, v21

    move-wide/from16 v5, v17

    move-wide/from16 v7, v19

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v11}, Landroid/media/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/media/TtmlNode;J)V

    .line 501
    .local v1, "node":Landroid/media/TtmlNode;
    return-object v1
.end method

.method private blacklist parseTtml()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 402
    .local v1, "nodeStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/media/TtmlNode;>;"
    const/4 v2, 0x0

    .line 403
    .local v2, "depthInUnsupportedTag":I
    const/4 v3, 0x1

    .line 404
    .local v3, "active":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/media/TtmlParser;->isEndOfDoc()Z

    move-result v4

    if-nez v4, :cond_c

    .line 405
    iget-object v4, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 406
    .local v4, "eventType":I
    invoke-virtual {v1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/TtmlNode;

    .line 407
    .local v5, "parent":Landroid/media/TtmlNode;
    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eqz v3, :cond_8

    .line 408
    if-ne v4, v7, :cond_2

    .line 409
    iget-object v6, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/media/TtmlParser;->isSupportedTag(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 410
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is ignored."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TtmlParser"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    add-int/lit8 v2, v2, 0x1

    .line 412
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 414
    :cond_0
    invoke-direct {v0, v5}, Landroid/media/TtmlParser;->parseNode(Landroid/media/TtmlNode;)Landroid/media/TtmlNode;

    move-result-object v6

    .line 415
    .local v6, "node":Landroid/media/TtmlNode;
    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 416
    if-eqz v5, :cond_1

    .line 417
    iget-object v7, v5, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    .end local v6    # "node":Landroid/media/TtmlNode;
    :cond_1
    move/from16 v21, v3

    goto/16 :goto_3

    .line 420
    :cond_2
    const/4 v7, 0x4

    if-ne v4, v7, :cond_4

    .line 421
    iget-object v6, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/media/TtmlUtils;->applyDefaultSpacePolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 422
    .local v17, "text":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 423
    iget-object v15, v5, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    new-instance v14, Landroid/media/TtmlNode;

    const-wide/16 v10, 0x0

    const-wide v12, 0x7fffffffffffffffL

    iget-wide v8, v0, Landroid/media/TtmlParser;->mCurrentRunId:J

    const-string v7, "#pcdata"

    const-string v16, ""

    move-object v6, v14

    move-wide/from16 v18, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v20, v14

    move-object v14, v5

    move/from16 v21, v3

    move-object v3, v15

    .end local v3    # "active":Z
    .local v21, "active":Z
    move-wide/from16 v15, v18

    invoke-direct/range {v6 .. v16}, Landroid/media/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/media/TtmlNode;J)V

    move-object/from16 v6, v20

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 422
    .end local v21    # "active":Z
    .restart local v3    # "active":Z
    :cond_3
    move/from16 v21, v3

    .end local v3    # "active":Z
    .restart local v21    # "active":Z
    goto :goto_2

    .line 428
    .end local v17    # "text":Ljava/lang/String;
    .end local v21    # "active":Z
    .restart local v3    # "active":Z
    :cond_4
    move/from16 v21, v3

    .end local v3    # "active":Z
    .restart local v21    # "active":Z
    if-ne v4, v6, :cond_7

    .line 429
    iget-object v3, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "p"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 430
    iget-object v3, v0, Landroid/media/TtmlParser;->mListener:Landroid/media/TtmlNodeListener;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/TtmlNode;

    invoke-interface {v3, v6}, Landroid/media/TtmlNodeListener;->onTtmlNodeParsed(Landroid/media/TtmlNode;)V

    goto :goto_1

    .line 431
    :cond_5
    iget-object v3, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "tt"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 432
    iget-object v3, v0, Landroid/media/TtmlParser;->mListener:Landroid/media/TtmlNodeListener;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/TtmlNode;

    invoke-interface {v3, v6}, Landroid/media/TtmlNodeListener;->onRootNodeParsed(Landroid/media/TtmlNode;)V

    .line 434
    :cond_6
    :goto_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_3

    .line 428
    :cond_7
    :goto_2
    goto :goto_3

    .line 437
    .end local v21    # "active":Z
    .restart local v3    # "active":Z
    :cond_8
    move/from16 v21, v3

    .end local v3    # "active":Z
    .restart local v21    # "active":Z
    if-ne v4, v7, :cond_9

    .line 438
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v21

    goto :goto_4

    .line 439
    :cond_9
    if-ne v4, v6, :cond_b

    .line 440
    add-int/lit8 v2, v2, -0x1

    .line 441
    if-nez v2, :cond_a

    .line 442
    const/4 v3, 0x1

    .end local v21    # "active":Z
    .restart local v3    # "active":Z
    goto :goto_4

    .line 441
    .end local v3    # "active":Z
    .restart local v21    # "active":Z
    :cond_a
    move/from16 v3, v21

    goto :goto_4

    .line 446
    :cond_b
    :goto_3
    move/from16 v3, v21

    .end local v21    # "active":Z
    .restart local v3    # "active":Z
    :goto_4
    iget-object v6, v0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 447
    .end local v4    # "eventType":I
    .end local v5    # "parent":Landroid/media/TtmlNode;
    goto/16 :goto_0

    .line 448
    :cond_c
    return-void
.end method


# virtual methods
.method public blacklist parse(Ljava/lang/String;J)V
    .locals 1
    .param p1, "ttmlText"    # Ljava/lang/String;
    .param p2, "runId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/TtmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 379
    iput-wide p2, p0, Landroid/media/TtmlParser;->mCurrentRunId:J

    .line 380
    invoke-direct {p0, p1}, Landroid/media/TtmlParser;->loadParser(Ljava/lang/String;)V

    .line 381
    invoke-direct {p0}, Landroid/media/TtmlParser;->parseTtml()V

    .line 382
    return-void
.end method
