.class public Landroid/widget/RadioGroup$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "RadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# direct methods
.method public constructor whitelist <init>(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 305
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 306
    return-void
.end method

.method public constructor whitelist <init>(IIF)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "initWeight"    # F

    .line 312
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 313
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 298
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 299
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 319
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 326
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 327
    return-void
.end method


# virtual methods
.method protected whitelist setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 2
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "widthAttr"    # I
    .param p3, "heightAttr"    # I

    .line 343
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    .line 344
    const-string/jumbo v0, "layout_width"

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/widget/RadioGroup$LayoutParams;->width:I

    goto :goto_0

    .line 346
    :cond_0
    iput v1, p0, Landroid/widget/RadioGroup$LayoutParams;->width:I

    .line 349
    :goto_0
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    const-string/jumbo v0, "layout_height"

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/widget/RadioGroup$LayoutParams;->height:I

    goto :goto_1

    .line 352
    :cond_1
    iput v1, p0, Landroid/widget/RadioGroup$LayoutParams;->height:I

    .line 354
    :goto_1
    return-void
.end method
