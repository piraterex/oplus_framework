.class public Landroid/text/TextShaper;
.super Ljava/lang/Object;
.source "TextShaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextShaper$GlyphsConsumer;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist shapeText(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/TextPaint;Landroid/text/TextShaper$GlyphsConsumer;)V
    .locals 20
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "dir"    # Landroid/text/TextDirectionHeuristic;
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "consumer"    # Landroid/text/TextShaper$GlyphsConsumer;

    .line 216
    move/from16 v13, p1

    move/from16 v14, p2

    add-int v0, v13, v14

    const/4 v1, 0x0

    move-object/from16 v15, p0

    move-object/from16 v12, p3

    invoke-static {v15, v13, v0, v12, v1}, Landroid/text/MeasuredParagraph;->buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v11

    .line 218
    .local v11, "mp":Landroid/text/MeasuredParagraph;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v10

    .line 220
    .local v10, "tl":Landroid/text/TextLine;
    add-int v5, v13, v14

    .line 221
    :try_start_0
    invoke-virtual {v11}, Landroid/text/MeasuredParagraph;->getParagraphDir()I

    move-result v6

    const/4 v0, 0x0

    .line 222
    invoke-virtual {v11, v0, v14}, Landroid/text/MeasuredParagraph;->getDirections(II)Landroid/text/Layout$Directions;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v0, -0x1

    const/16 v16, -0x1

    const/16 v17, 0x0

    .line 220
    move-object v1, v10

    move-object/from16 v2, p4

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v18, v10

    .end local v10    # "tl":Landroid/text/TextLine;
    .local v18, "tl":Landroid/text/TextLine;
    move v10, v0

    move-object/from16 v19, v11

    .end local v11    # "mp":Landroid/text/MeasuredParagraph;
    .local v19, "mp":Landroid/text/MeasuredParagraph;
    move/from16 v11, v16

    move/from16 v12, v17

    :try_start_1
    invoke-virtual/range {v1 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 228
    move-object/from16 v1, p5

    move-object/from16 v2, v18

    .end local v18    # "tl":Landroid/text/TextLine;
    .local v2, "tl":Landroid/text/TextLine;
    :try_start_2
    invoke-virtual {v2, v1}, Landroid/text/TextLine;->shape(Landroid/text/TextShaper$GlyphsConsumer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    invoke-static {v2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 231
    nop

    .line 232
    return-void

    .line 230
    :catchall_0
    move-exception v0

    goto :goto_0

    .end local v2    # "tl":Landroid/text/TextLine;
    .restart local v18    # "tl":Landroid/text/TextLine;
    :catchall_1
    move-exception v0

    move-object/from16 v1, p5

    move-object/from16 v2, v18

    .end local v18    # "tl":Landroid/text/TextLine;
    .restart local v2    # "tl":Landroid/text/TextLine;
    goto :goto_0

    .end local v2    # "tl":Landroid/text/TextLine;
    .end local v19    # "mp":Landroid/text/MeasuredParagraph;
    .restart local v10    # "tl":Landroid/text/TextLine;
    .restart local v11    # "mp":Landroid/text/MeasuredParagraph;
    :catchall_2
    move-exception v0

    move-object/from16 v1, p5

    move-object v2, v10

    move-object/from16 v19, v11

    .end local v10    # "tl":Landroid/text/TextLine;
    .end local v11    # "mp":Landroid/text/MeasuredParagraph;
    .restart local v2    # "tl":Landroid/text/TextLine;
    .restart local v19    # "mp":Landroid/text/MeasuredParagraph;
    :goto_0
    invoke-static {v2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 231
    throw v0
.end method
