.class Landroid/widget/TextView$Drawables;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Drawables"
.end annotation


# static fields
.field static final greylist-max-o BOTTOM:I = 0x3

.field static final greylist-max-o DRAWABLE_LEFT:I = 0x1

.field static final greylist-max-o DRAWABLE_NONE:I = -0x1

.field static final greylist-max-o DRAWABLE_RIGHT:I = 0x0

.field static final greylist-max-o LEFT:I = 0x0

.field static final greylist-max-o RIGHT:I = 0x2

.field static final greylist-max-o TOP:I = 0x1


# instance fields
.field blacklist mBlendMode:Landroid/graphics/BlendMode;

.field final greylist-max-o mCompoundRect:Landroid/graphics/Rect;

.field greylist-max-o mDrawableEnd:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mDrawableError:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mDrawableHeightEnd:I

.field greylist-max-o mDrawableHeightError:I

.field greylist-max-o mDrawableHeightLeft:I

.field greylist-max-o mDrawableHeightRight:I

.field greylist-max-o mDrawableHeightStart:I

.field greylist-max-o mDrawableHeightTemp:I

.field greylist-max-o mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mDrawablePadding:I

.field greylist-max-o mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mDrawableSaved:I

.field greylist-max-o mDrawableSizeBottom:I

.field greylist-max-o mDrawableSizeEnd:I

.field greylist-max-o mDrawableSizeError:I

.field greylist-max-o mDrawableSizeLeft:I

.field greylist-max-o mDrawableSizeRight:I

.field greylist-max-o mDrawableSizeStart:I

.field greylist-max-o mDrawableSizeTemp:I

.field greylist-max-o mDrawableSizeTop:I

.field greylist-max-o mDrawableStart:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mDrawableTemp:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mDrawableWidthBottom:I

.field greylist-max-o mDrawableWidthTop:I

.field greylist-max-o mHasTint:Z

.field greylist-max-o mHasTintMode:Z

.field greylist-max-o mIsRtlCompatibilityMode:Z

.field greylist-max-o mOverride:Z

.field final greylist-max-o mShowing:[Landroid/graphics/drawable/Drawable;

.field greylist-max-o mTintList:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 564
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    .line 585
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    .line 588
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 589
    .local v0, "targetSdkVersion":I
    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1

    .line 590
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Landroid/widget/TextView$Drawables;->mIsRtlCompatibilityMode:Z

    .line 591
    iput-boolean v1, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 592
    return-void
.end method

.method private greylist-max-o applyErrorDrawableIfNeeded(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .line 689
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 691
    :pswitch_0
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    aput-object v3, v0, v2

    .line 692
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 693
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 694
    goto :goto_0

    .line 696
    :pswitch_1
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    aput-object v3, v0, v1

    .line 697
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 698
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 699
    nop

    .line 704
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 705
    packed-switch p1, :pswitch_data_1

    .line 719
    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    .line 721
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v2, v1

    iput-object v3, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    .line 722
    iget v3, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    iput v3, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    .line 723
    iget v3, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v3, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    .line 725
    aput-object v0, v2, v1

    .line 726
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 727
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_1

    .line 707
    :pswitch_2
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    .line 709
    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v1, v2

    iput-object v3, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    .line 710
    iget v3, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iput v3, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    .line 711
    iget v3, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v3, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    .line 713
    aput-object v0, v1, v2

    .line 714
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 715
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 731
    :cond_0
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o hasMetadata()Z
    .locals 1

    .line 599
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/TextView$Drawables;->mHasTint:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public greylist-max-o resolveWithLayoutDirection(I)Z
    .locals 8
    .param p1, "layoutDirection"    # I

    .line 610
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 611
    .local v2, "previousLeft":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x2

    aget-object v4, v0, v3

    .line 614
    .local v4, "previousRight":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    aput-object v5, v0, v1

    .line 615
    iget-object v6, p0, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    aput-object v6, v0, v3

    .line 617
    iget-boolean v7, p0, Landroid/widget/TextView$Drawables;->mIsRtlCompatibilityMode:Z

    if-eqz v7, :cond_1

    .line 619
    iget-object v7, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_0

    if-nez v5, :cond_0

    .line 620
    aput-object v7, v0, v1

    .line 621
    iget v5, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v5, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 622
    iget v5, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v5, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 625
    :cond_0
    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    if-nez v6, :cond_2

    .line 626
    aput-object v5, v0, v3

    .line 627
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 628
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_0

    .line 633
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 648
    iget-boolean v5, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    if-eqz v5, :cond_2

    .line 649
    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v5, v0, v1

    .line 650
    iget v5, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v5, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 651
    iget v5, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v5, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 653
    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v5, v0, v3

    .line 654
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 655
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_0

    .line 635
    :pswitch_0
    iget-boolean v5, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    if-eqz v5, :cond_2

    .line 636
    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v5, v0, v3

    .line 637
    iget v5, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v5, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 638
    iget v5, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v5, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 640
    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v5, v0, v1

    .line 641
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 642
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 661
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/TextView$Drawables;->applyErrorDrawableIfNeeded(I)V

    .line 663
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v0, v1

    if-ne v5, v2, :cond_3

    aget-object v0, v0, v3

    if-eq v0, v4, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-o setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V
    .locals 3
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p2, "tv"    # Landroid/widget/TextView;

    .line 668
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    .line 669
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 671
    :cond_0
    iput-object p1, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    .line 673
    if-eqz p1, :cond_1

    .line 674
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 675
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    .line 677
    .local v1, "state":[I
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 678
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 679
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 680
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    .line 681
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    .line 682
    .end local v0    # "compoundRect":Landroid/graphics/Rect;
    .end local v1    # "state":[I
    goto :goto_0

    .line 683
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    .line 685
    :goto_0
    return-void
.end method
