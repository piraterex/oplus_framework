.class Landroid/widget/Editor$ErrorPopup;
.super Landroid/widget/PopupWindow;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorPopup"
.end annotation


# instance fields
.field private greylist-max-o mAbove:Z

.field private greylist-max-o mPopupInlineErrorAboveBackgroundId:I

.field private greylist-max-o mPopupInlineErrorBackgroundId:I

.field private final greylist-max-o mView:Landroid/widget/TextView;


# direct methods
.method constructor greylist-max-o <init>(Landroid/widget/TextView;II)V
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 7244
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 7238
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$ErrorPopup;->mAbove:Z

    .line 7240
    iput v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    .line 7241
    iput v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    .line 7245
    iput-object p1, p0, Landroid/widget/Editor$ErrorPopup;->mView:Landroid/widget/TextView;

    .line 7249
    const/16 v1, 0x137

    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$ErrorPopup;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    .line 7251
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 7252
    return-void
.end method

.method private greylist-max-o getResourceId(II)I
    .locals 2
    .param p1, "currentId"    # I
    .param p2, "index"    # I

    .line 7271
    if-nez p1, :cond_0

    .line 7272
    iget-object v0, p0, Landroid/widget/Editor$ErrorPopup;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 7274
    .local v0, "styledAttributes":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 7275
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 7277
    .end local v0    # "styledAttributes":Landroid/content/res/TypedArray;
    :cond_0
    return p1
.end method


# virtual methods
.method greylist-max-o fixDirection(Z)V
    .locals 2
    .param p1, "above"    # Z

    .line 7255
    iput-boolean p1, p0, Landroid/widget/Editor$ErrorPopup;->mAbove:Z

    .line 7257
    if-eqz p1, :cond_0

    .line 7258
    iget v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    const/16 v1, 0x136

    .line 7259
    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$ErrorPopup;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    goto :goto_0

    .line 7262
    :cond_0
    iget v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    const/16 v1, 0x137

    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$ErrorPopup;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    .line 7266
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$ErrorPopup;->mView:Landroid/widget/TextView;

    .line 7267
    if-eqz p1, :cond_1

    iget v1, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    goto :goto_1

    :cond_1
    iget v1, p0, Landroid/widget/Editor$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    .line 7266
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 7268
    return-void
.end method

.method public whitelist update(IIIIZ)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "force"    # Z

    .line 7282
    invoke-super/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 7284
    invoke-virtual {p0}, Landroid/widget/Editor$ErrorPopup;->isAboveAnchor()Z

    move-result v0

    .line 7285
    .local v0, "above":Z
    iget-boolean v1, p0, Landroid/widget/Editor$ErrorPopup;->mAbove:Z

    if-eq v0, v1, :cond_0

    .line 7286
    invoke-virtual {p0, v0}, Landroid/widget/Editor$ErrorPopup;->fixDirection(Z)V

    .line 7288
    :cond_0
    return-void
.end method
