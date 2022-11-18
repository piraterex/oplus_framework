.class Landroid/media/WebVttParser$3;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/WebVttParser$Phase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field final synthetic blacklist this$0:Landroid/media/WebVttParser;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 716
    const-class v0, Landroid/media/WebVttParser;

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/WebVttParser;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/WebVttParser;

    .line 716
    iput-object p1, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist parse(Ljava/lang/String;)V
    .locals 5
    .param p1, "line"    # Ljava/lang/String;

    .line 795
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 796
    iget-object v0, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmParseCueId(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/WebVttParser;->-$$Nest$fputmPhase(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)V

    goto :goto_0

    .line 797
    :cond_0
    const-string v0, "-->"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 798
    iget-object v0, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmParseCueTime(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/WebVttParser;->-$$Nest$fputmPhase(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)V

    .line 799
    iget-object v0, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmPhase(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/WebVttParser$Phase;->parse(Ljava/lang/String;)V

    goto :goto_0

    .line 801
    :cond_1
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 802
    .local v0, "colonAt":I
    if-lez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_3

    .line 803
    :cond_2
    iget-object v1, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string v2, "meta data header has invalid format"

    invoke-static {v1, v2, p1}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 806
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 808
    .local v2, "value":Ljava/lang/String;
    const-string v3, "Region"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 809
    invoke-virtual {p0, v2}, Landroid/media/WebVttParser$3;->parseRegion(Ljava/lang/String;)Landroid/media/TextTrackRegion;

    move-result-object v3

    .line 810
    .local v3, "region":Landroid/media/TextTrackRegion;
    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-static {v4}, Landroid/media/WebVttParser;->-$$Nest$fgetmListener(Landroid/media/WebVttParser;)Landroid/media/WebVttCueListener;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/media/WebVttCueListener;->onRegionParsed(Landroid/media/TextTrackRegion;)V

    .line 813
    .end local v0    # "colonAt":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "region":Landroid/media/TextTrackRegion;
    :cond_4
    :goto_0
    return-void
.end method

.method blacklist parseRegion(Ljava/lang/String;)Landroid/media/TextTrackRegion;
    .locals 22
    .param p1, "s"    # Ljava/lang/String;

    .line 718
    move-object/from16 v1, p0

    new-instance v0, Landroid/media/TextTrackRegion;

    invoke-direct {v0}, Landroid/media/TextTrackRegion;-><init>()V

    move-object v2, v0

    .line 719
    .local v2, "region":Landroid/media/TextTrackRegion;
    const-string v0, " +"

    move-object/from16 v3, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_c

    aget-object v8, v4, v7

    .line 720
    .local v8, "setting":Ljava/lang/String;
    const/16 v0, 0x3d

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 721
    .local v9, "equalAt":I
    if-lez v9, :cond_b

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v9, v0, :cond_0

    .line 722
    move/from16 v20, v6

    goto/16 :goto_4

    .line 725
    :cond_0
    invoke-virtual {v8, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 726
    .local v15, "name":Ljava/lang/String;
    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 727
    .local v14, "value":Ljava/lang/String;
    const-string v0, "id"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    iput-object v14, v2, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    move/from16 v20, v6

    goto/16 :goto_4

    .line 729
    :cond_1
    const-string/jumbo v0, "width"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 731
    :try_start_0
    invoke-static {v14}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F

    move-result v0

    iput v0, v2, Landroid/media/TextTrackRegion;->mWidth:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    move/from16 v20, v6

    goto/16 :goto_4

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v10, v1, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    .line 734
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v16

    .line 733
    const-string v11, "region setting"

    const-string v13, "has invalid value"

    move-object v12, v15

    move-object/from16 v17, v14

    .end local v14    # "value":Ljava/lang/String;
    .local v17, "value":Ljava/lang/String;
    move-object/from16 v14, v16

    move-object v6, v15

    .end local v15    # "name":Ljava/lang/String;
    .local v6, "name":Ljava/lang/String;
    move-object/from16 v15, v17

    invoke-static/range {v10 .. v15}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 736
    .end local v6    # "name":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    .restart local v14    # "value":Ljava/lang/String;
    .restart local v15    # "name":Ljava/lang/String;
    :cond_2
    move-object/from16 v17, v14

    move-object v6, v15

    .end local v14    # "value":Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v17    # "value":Ljava/lang/String;
    const-string v0, "lines"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "region setting"

    if-eqz v10, :cond_4

    .line 737
    const-string v10, ".*[^0-9].*"

    move-object/from16 v15, v17

    .end local v17    # "value":Ljava/lang/String;
    .local v15, "value":Ljava/lang/String;
    invoke-virtual {v15, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 738
    iget-object v10, v1, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string v11, "contains an invalid character"

    invoke-static {v10, v0, v6, v11, v15}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x0

    goto/16 :goto_4

    .line 741
    :cond_3
    :try_start_1
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Landroid/media/TextTrackRegion;->mLines:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 742
    goto :goto_1

    .line 743
    :catch_1
    move-exception v0

    .line 744
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    iget-object v10, v1, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string v12, "is not numeric"

    invoke-static {v10, v11, v6, v12, v15}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 747
    .end local v15    # "value":Ljava/lang/String;
    .restart local v17    # "value":Ljava/lang/String;
    :cond_4
    move-object/from16 v15, v17

    .end local v17    # "value":Ljava/lang/String;
    .restart local v15    # "value":Ljava/lang/String;
    const-string v0, "regionanchor"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 748
    const-string/jumbo v0, "viewportanchor"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 781
    :cond_5
    const-string v0, "scroll"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 782
    const-string/jumbo v0, "up"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 783
    const/16 v0, 0x12d

    iput v0, v2, Landroid/media/TextTrackRegion;->mScrollValue:I

    const/16 v20, 0x0

    goto/16 :goto_4

    .line 786
    :cond_6
    iget-object v0, v1, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string v10, "has invalid value"

    invoke-static {v0, v11, v6, v10, v15}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x0

    goto/16 :goto_4

    .line 781
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 749
    :cond_8
    :goto_2
    const-string v0, ","

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 750
    .local v14, "commaAt":I
    if-gez v14, :cond_9

    .line 751
    iget-object v0, v1, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string v10, "contains no comma"

    invoke-static {v0, v11, v6, v10, v15}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 755
    :cond_9
    const/4 v10, 0x0

    invoke-virtual {v15, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 756
    .local v17, "anchorX":Ljava/lang/String;
    add-int/lit8 v0, v14, 0x1

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 760
    .local v18, "anchorY":Ljava/lang/String;
    :try_start_2
    invoke-static/range {v17 .. v17}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3

    move v13, v0

    .line 765
    .local v13, "x":F
    nop

    .line 767
    :try_start_3
    invoke-static/range {v18 .. v18}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F

    move-result v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 772
    .local v0, "y":F
    nop

    .line 774
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x72

    if-ne v10, v11, :cond_a

    .line 775
    iput v13, v2, Landroid/media/TextTrackRegion;->mAnchorPointX:F

    .line 776
    iput v0, v2, Landroid/media/TextTrackRegion;->mAnchorPointY:F

    goto :goto_3

    .line 778
    :cond_a
    iput v13, v2, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    .line 779
    iput v0, v2, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    .line 781
    .end local v0    # "y":F
    .end local v13    # "x":F
    .end local v14    # "commaAt":I
    .end local v17    # "anchorX":Ljava/lang/String;
    .end local v18    # "anchorY":Ljava/lang/String;
    :goto_3
    move/from16 v20, v12

    goto :goto_4

    .line 768
    .restart local v13    # "x":F
    .restart local v14    # "commaAt":I
    .restart local v17    # "anchorX":Ljava/lang/String;
    .restart local v18    # "anchorY":Ljava/lang/String;
    :catch_2
    move-exception v0

    const/4 v12, 0x0

    move-object v10, v0

    move-object v0, v10

    .line 769
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v10, v1, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    .line 770
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v16

    .line 769
    const-string v11, "region setting"

    const-string v19, "has invalid y component"

    move/from16 v20, v12

    move-object v12, v6

    move/from16 v21, v13

    .end local v13    # "x":F
    .local v21, "x":F
    move-object/from16 v13, v19

    move/from16 v19, v14

    .end local v14    # "commaAt":I
    .local v19, "commaAt":I
    move-object/from16 v14, v16

    move-object/from16 v16, v15

    .end local v15    # "value":Ljava/lang/String;
    .local v16, "value":Ljava/lang/String;
    move-object/from16 v15, v18

    invoke-static/range {v10 .. v15}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    goto :goto_4

    .line 761
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v16    # "value":Ljava/lang/String;
    .end local v19    # "commaAt":I
    .end local v21    # "x":F
    .restart local v14    # "commaAt":I
    .restart local v15    # "value":Ljava/lang/String;
    :catch_3
    move-exception v0

    move/from16 v19, v14

    move-object/from16 v16, v15

    const/16 v20, 0x0

    move-object v10, v0

    .end local v14    # "commaAt":I
    .end local v15    # "value":Ljava/lang/String;
    .restart local v16    # "value":Ljava/lang/String;
    .restart local v19    # "commaAt":I
    move-object v0, v10

    .line 762
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    iget-object v10, v1, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    .line 763
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v14

    .line 762
    const-string v11, "region setting"

    const-string v13, "has invalid x component"

    move-object v12, v6

    move-object/from16 v15, v17

    invoke-static/range {v10 .. v15}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    goto :goto_4

    .line 721
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "name":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    .end local v17    # "anchorX":Ljava/lang/String;
    .end local v18    # "anchorY":Ljava/lang/String;
    .end local v19    # "commaAt":I
    :cond_b
    move/from16 v20, v6

    .line 719
    .end local v8    # "setting":Ljava/lang/String;
    .end local v9    # "equalAt":I
    :goto_4
    add-int/lit8 v7, v7, 0x1

    move/from16 v6, v20

    goto/16 :goto_0

    .line 790
    :cond_c
    return-object v2
.end method
