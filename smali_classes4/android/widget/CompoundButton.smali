.class public abstract Landroid/widget/CompoundButton;
.super Landroid/widget/Button;
.source "CompoundButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CompoundButton$SavedState;,
        Landroid/widget/CompoundButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o CHECKED_STATE_SET:[I

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String;


# instance fields
.field private greylist mBroadcasting:Z

.field private blacklist mButtonBlendMode:Landroid/graphics/BlendMode;

.field private greylist mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mButtonTintList:Landroid/content/res/ColorStateList;

.field private greylist-max-o mChecked:Z

.field private greylist-max-o mCheckedFromResource:Z

.field private blacklist mCustomStateDescription:Ljava/lang/CharSequence;

.field private blacklist mHasButtonBlendMode:Z

.field private greylist-max-o mHasButtonTint:Z

.field private greylist mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private greylist-max-o mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 64
    const-class v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/CompoundButton;->LOG_TAG:Ljava/lang/String;

    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/widget/CompoundButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 101
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/CompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    .line 73
    iput-object v0, p0, Landroid/widget/CompoundButton;->mButtonBlendMode:Landroid/graphics/BlendMode;

    .line 74
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/CompoundButton;->mHasButtonTint:Z

    .line 75
    iput-boolean v1, p0, Landroid/widget/CompoundButton;->mHasButtonBlendMode:Z

    .line 83
    iput-boolean v1, p0, Landroid/widget/CompoundButton;->mCheckedFromResource:Z

    .line 85
    iput-object v0, p0, Landroid/widget/CompoundButton;->mCustomStateDescription:Ljava/lang/CharSequence;

    .line 106
    sget-object v0, Lcom/android/internal/R$styleable;->CompoundButton:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 108
    .local v0, "a":Landroid/content/res/TypedArray;
    sget-object v4, Lcom/android/internal/R$styleable;->CompoundButton:[I

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v0

    move v7, p3

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Landroid/widget/CompoundButton;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 111
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 112
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 113
    invoke-virtual {p0, v3}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    :cond_0
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 117
    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iget-object v5, p0, Landroid/widget/CompoundButton;->mButtonBlendMode:Landroid/graphics/BlendMode;

    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/CompoundButton;->mButtonBlendMode:Landroid/graphics/BlendMode;

    .line 119
    iput-boolean v2, p0, Landroid/widget/CompoundButton;->mHasButtonBlendMode:Z

    .line 122
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 123
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/CompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    .line 124
    iput-boolean v2, p0, Landroid/widget/CompoundButton;->mHasButtonTint:Z

    .line 127
    :cond_2
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 129
    .local v1, "checked":Z
    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 130
    iput-boolean v2, p0, Landroid/widget/CompoundButton;->mCheckedFromResource:Z

    .line 132
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 134
    invoke-direct {p0}, Landroid/widget/CompoundButton;->applyButtonTint()V

    .line 135
    return-void
.end method

.method private greylist-max-o applyButtonTint()V
    .locals 2

    .line 457
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Landroid/widget/CompoundButton;->mHasButtonTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/CompoundButton;->mHasButtonBlendMode:Z

    if-eqz v1, :cond_3

    .line 458
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 460
    iget-boolean v1, p0, Landroid/widget/CompoundButton;->mHasButtonTint:Z

    if-eqz v1, :cond_1

    .line 461
    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 464
    :cond_1
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mHasButtonBlendMode:Z

    if-eqz v0, :cond_2

    .line 465
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 470
    :cond_2
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 471
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 474
    :cond_3
    return-void
.end method


# virtual methods
.method public whitelist autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 3
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .line 701
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 703
    :cond_0
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isToggle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 704
    sget-object v0, Landroid/widget/CompoundButton;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " could not be autofilled into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    return-void

    .line 708
    :cond_1
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getToggleValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 709
    return-void
.end method

.method public whitelist drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 597
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->drawableHotspotChanged(FF)V

    .line 599
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 602
    :cond_0
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .locals 2

    .line 586
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 588
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 589
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 591
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 593
    :cond_0
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .line 683
    invoke-super {p0, p1}, Landroid/widget/Button;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 684
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    const-string v1, "checked"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 685
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 478
    const-class v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAutofillType()I
    .locals 1

    .line 713
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 1

    .line 718
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-static {v0}, Landroid/view/autofill/AutofillValue;->forToggle(Z)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 344
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected blacklist getButtonStateDescription()Ljava/lang/CharSequence;
    .locals 2

    .line 166
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040202

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 169
    :cond_0
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10405ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getButtonTintBlendMode()Landroid/graphics/BlendMode;
    .locals 1

    .line 453
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public whitelist getButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 395
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 440
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonBlendMode:Landroid/graphics/BlendMode;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    .line 441
    :cond_0
    const/4 v0, 0x0

    .line 440
    :goto_0
    return-object v0
.end method

.method public whitelist getCompoundPaddingLeft()I
    .locals 3

    .line 498
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingLeft()I

    move-result v0

    .line 499
    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isLayoutRtl()Z

    move-result v1

    if-nez v1, :cond_0

    .line 500
    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 501
    .local v1, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 502
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v0, v2

    .line 505
    .end local v1    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return v0
.end method

.method public whitelist getCompoundPaddingRight()I
    .locals 3

    .line 510
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingRight()I

    move-result v0

    .line 511
    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 513
    .local v1, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 514
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v0, v2

    .line 517
    .end local v1    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return v0
.end method

.method public greylist-max-o getHorizontalOffsetForDrawables()I
    .locals 2

    .line 525
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 526
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 160
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    return v0
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .locals 1

    .line 611
    invoke-super {p0}, Landroid/widget/Button;->jumpDrawablesToCurrentState()V

    .line 612
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 613
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$setButtonDrawableAsync$0$android-widget-CompoundButton(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 294
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method synthetic blacklist lambda$setButtonIconAsync$1$android-widget-CompoundButton(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "button"    # Landroid/graphics/drawable/Drawable;

    .line 361
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected whitelist onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .line 577
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 578
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    sget-object v1, Landroid/widget/CompoundButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/CompoundButton;->mergeDrawableStates([I[I)[I

    .line 581
    :cond_0
    return-object v0
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 531
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 532
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 533
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    .line 534
    .local v1, "verticalGravity":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 535
    .local v2, "drawableHeight":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 538
    .local v3, "drawableWidth":I
    sparse-switch v1, :sswitch_data_0

    .line 546
    const/4 v4, 0x0

    .local v4, "top":I
    goto :goto_0

    .line 540
    .end local v4    # "top":I
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    .line 541
    .restart local v4    # "top":I
    goto :goto_0

    .line 543
    .end local v4    # "top":I
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    .line 544
    .restart local v4    # "top":I
    nop

    .line 548
    :goto_0
    add-int v5, v4, v2

    .line 549
    .local v5, "bottom":I
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v6

    sub-int/2addr v6, v3

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 550
    .local v6, "left":I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v7

    goto :goto_2

    :cond_1
    move v7, v3

    .line 552
    .local v7, "right":I
    :goto_2
    invoke-virtual {v0, v6, v4, v7, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 554
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 555
    .local v8, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_2

    .line 556
    invoke-virtual {v8, v6, v4, v7, v5}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 560
    .end local v1    # "verticalGravity":I
    .end local v2    # "drawableHeight":I
    .end local v3    # "drawableWidth":I
    .end local v4    # "top":I
    .end local v5    # "bottom":I
    .end local v6    # "left":I
    .end local v7    # "right":I
    .end local v8    # "background":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 562
    if-eqz v0, :cond_4

    .line 563
    iget v1, p0, Landroid/widget/CompoundButton;->mScrollX:I

    .line 564
    .local v1, "scrollX":I
    iget v2, p0, Landroid/widget/CompoundButton;->mScrollY:I

    .line 565
    .local v2, "scrollY":I
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    .line 566
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 568
    :cond_3
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 569
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 570
    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 573
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_4
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public greylist-max-o onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 484
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 485
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 486
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 491
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 492
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 493
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 494
    return-void
.end method

.method protected blacklist onProvideStructure(Landroid/view/ViewStructure;II)V
    .locals 2
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "viewFor"    # I
    .param p3, "flags"    # I

    .line 692
    invoke-super {p0, p1, p2, p3}, Landroid/widget/Button;->onProvideStructure(Landroid/view/ViewStructure;II)V

    .line 694
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 695
    iget-boolean v1, p0, Landroid/widget/CompoundButton;->mCheckedFromResource:Z

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setDataIsSensitive(Z)V

    .line 697
    :cond_0
    return-void
.end method

.method public greylist-max-o onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .line 330
    invoke-super {p0, p1}, Landroid/widget/Button;->onResolveDrawables(I)V

    .line 331
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 334
    :cond_0
    return-void
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 673
    move-object v0, p1

    check-cast v0, Landroid/widget/CompoundButton$SavedState;

    .line 675
    .local v0, "ss":Landroid/widget/CompoundButton$SavedState;
    invoke-virtual {v0}, Landroid/widget/CompoundButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 676
    iget-boolean v1, v0, Landroid/widget/CompoundButton$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 677
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    .line 678
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 663
    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 665
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/CompoundButton$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/CompoundButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 667
    .local v1, "ss":Landroid/widget/CompoundButton$SavedState;
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Landroid/widget/CompoundButton$SavedState;->checked:Z

    .line 668
    return-object v1
.end method

.method public whitelist performClick()Z
    .locals 2

    .line 144
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->toggle()V

    .line 146
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    .line 147
    .local v0, "handled":Z
    if-nez v0, :cond_0

    .line 150
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    .line 153
    :cond_0
    return v0
.end method

.method public whitelist setButtonDrawable(I)V
    .locals 1
    .param p1, "resId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setButtonDrawableAsync"
    .end annotation

    .line 283
    if-eqz p1, :cond_0

    .line 284
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 286
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x0

    .line 288
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    return-void
.end method

.method public whitelist setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 304
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    .line 305
    if-eqz v0, :cond_0

    .line 306
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 307
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    :cond_0
    iput-object p1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 312
    if-eqz p1, :cond_3

    .line 313
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 314
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 315
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 318
    :cond_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 319
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setMinHeight(I)V

    .line 320
    invoke-direct {p0}, Landroid/widget/CompoundButton;->applyButtonTint()V

    .line 323
    :cond_3
    return-void
.end method

.method public blacklist setButtonDrawableAsync(I)Ljava/lang/Runnable;
    .locals 2
    .param p1, "resId"    # I

    .line 293
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 294
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v1, Landroid/widget/CompoundButton$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Landroid/widget/CompoundButton$$ExternalSyntheticLambda1;-><init>(Landroid/widget/CompoundButton;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public whitelist setButtonIcon(Landroid/graphics/drawable/Icon;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setButtonIconAsync"
    .end annotation

    .line 355
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    return-void
.end method

.method public blacklist setButtonIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 360
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 361
    .local v0, "button":Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v1, Landroid/widget/CompoundButton$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Landroid/widget/CompoundButton$$ExternalSyntheticLambda0;-><init>(Landroid/widget/CompoundButton;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public whitelist setButtonTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/BlendMode;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 426
    iput-object p1, p0, Landroid/widget/CompoundButton;->mButtonBlendMode:Landroid/graphics/BlendMode;

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mHasButtonBlendMode:Z

    .line 429
    invoke-direct {p0}, Landroid/widget/CompoundButton;->applyButtonTint()V

    .line 430
    return-void
.end method

.method public whitelist setButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 381
    iput-object p1, p0, Landroid/widget/CompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mHasButtonTint:Z

    .line 384
    invoke-direct {p0}, Landroid/widget/CompoundButton;->applyButtonTint()V

    .line 385
    return-void
.end method

.method public whitelist setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 410
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setButtonTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 411
    return-void
.end method

.method public whitelist setChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .line 208
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    if-eq v0, p1, :cond_4

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mCheckedFromResource:Z

    .line 210
    iput-boolean p1, p0, Landroid/widget/CompoundButton;->mChecked:Z

    .line 211
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->refreshDrawableState()V

    .line 214
    iget-boolean v1, p0, Landroid/widget/CompoundButton;->mBroadcasting:Z

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->setDefaultStateDescription()V

    .line 217
    return-void

    .line 220
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/CompoundButton;->mBroadcasting:Z

    .line 221
    iget-object v1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v1, :cond_1

    .line 222
    iget-boolean v2, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-interface {v1, p0, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 224
    :cond_1
    iget-object v1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v1, :cond_2

    .line 225
    iget-boolean v2, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-interface {v1, p0, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 227
    :cond_2
    iget-object v1, p0, Landroid/widget/CompoundButton;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillManager;

    .line 228
    .local v1, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v1, :cond_3

    .line 229
    invoke-virtual {v1, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    .line 232
    :cond_3
    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mBroadcasting:Z

    .line 235
    .end local v1    # "afm":Landroid/view/autofill/AutofillManager;
    :cond_4
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->setDefaultStateDescription()V

    .line 236
    return-void
.end method

.method protected blacklist setDefaultStateDescription()V
    .locals 1

    .line 196
    iget-object v0, p0, Landroid/widget/CompoundButton;->mCustomStateDescription:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonStateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Button;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 199
    :cond_0
    return-void
.end method

.method public whitelist setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 245
    iput-object p1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 246
    return-void
.end method

.method greylist-max-o setOnCheckedChangeWidgetListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 256
    iput-object p1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 257
    return-void
.end method

.method public whitelist setStateDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "stateDescription"    # Ljava/lang/CharSequence;

    .line 186
    iput-object p1, p0, Landroid/widget/CompoundButton;->mCustomStateDescription:Ljava/lang/CharSequence;

    .line 187
    if-nez p1, :cond_0

    .line 188
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->setDefaultStateDescription()V

    goto :goto_0

    .line 190
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 192
    :goto_0
    return-void
.end method

.method public whitelist toggle()V
    .locals 1

    .line 139
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 140
    return-void
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 606
    invoke-super {p0, p1}, Landroid/widget/Button;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

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
