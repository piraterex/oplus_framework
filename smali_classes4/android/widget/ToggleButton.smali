.class public Landroid/widget/ToggleButton;
.super Landroid/widget/CompoundButton;
.source "ToggleButton.java"


# static fields
.field private static final greylist-max-o NO_ALPHA:I = 0xff


# instance fields
.field private greylist-max-o mDisabledAlpha:F

.field private greylist-max-o mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mTextOff:Ljava/lang/CharSequence;

.field private greylist-max-o mTextOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 72
    const v0, 0x101004b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 69
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    sget-object v0, Lcom/android/internal/R$styleable;->ToggleButton:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "a":Landroid/content/res/TypedArray;
    sget-object v3, Lcom/android/internal/R$styleable;->ToggleButton:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/widget/ToggleButton;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    .line 58
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    .line 59
    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/widget/ToggleButton;->mDisabledAlpha:F

    .line 60
    invoke-direct {p0}, Landroid/widget/ToggleButton;->syncTextState()V

    .line 63
    invoke-virtual {p0}, Landroid/widget/ToggleButton;->setDefaultStateDescription()V

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    return-void
.end method

.method private greylist-max-o syncTextState()V
    .locals 2

    .line 87
    invoke-virtual {p0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 88
    .local v0, "checked":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p0, v1}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 90
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 91
    invoke-virtual {p0, v1}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o updateReferenceToIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 165
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    .line 166
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 167
    .local v0, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const v1, 0x1020017

    .line 168
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ToggleButton;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 169
    .end local v0    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    goto :goto_0

    .line 170
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ToggleButton;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 172
    :goto_0
    return-void
.end method


# virtual methods
.method protected whitelist drawableStateChanged()V
    .locals 3

    .line 176
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 178
    iget-object v0, p0, Landroid/widget/ToggleButton;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p0}, Landroid/widget/ToggleButton;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Landroid/widget/ToggleButton;->mDisabledAlpha:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 181
    :cond_1
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 185
    const-class v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getButtonStateDescription()Ljava/lang/CharSequence;
    .locals 2

    .line 192
    invoke-virtual {p0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Landroid/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    .line 195
    :cond_1
    iget-object v0, p0, Landroid/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public whitelist getDisabledAlpha()F
    .locals 1

    .line 147
    iget v0, p0, Landroid/widget/ToggleButton;->mDisabledAlpha:F

    return v0
.end method

.method public whitelist getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .line 124
    iget-object v0, p0, Landroid/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .line 102
    iget-object v0, p0, Landroid/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected whitelist onFinishInflate()V
    .locals 1

    .line 152
    invoke-super {p0}, Landroid/widget/CompoundButton;->onFinishInflate()V

    .line 154
    invoke-virtual {p0}, Landroid/widget/ToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ToggleButton;->updateReferenceToIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    return-void
.end method

.method public whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 159
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    invoke-direct {p0, p1}, Landroid/widget/ToggleButton;->updateReferenceToIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    return-void
.end method

.method public whitelist setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .line 81
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 83
    invoke-direct {p0}, Landroid/widget/ToggleButton;->syncTextState()V

    .line 84
    return-void
.end method

.method public whitelist setTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOff"    # Ljava/lang/CharSequence;

    .line 133
    iput-object p1, p0, Landroid/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    .line 136
    invoke-virtual {p0}, Landroid/widget/ToggleButton;->setDefaultStateDescription()V

    .line 137
    return-void
.end method

.method public whitelist setTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "textOn"    # Ljava/lang/CharSequence;

    .line 111
    iput-object p1, p0, Landroid/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    .line 114
    invoke-virtual {p0}, Landroid/widget/ToggleButton;->setDefaultStateDescription()V

    .line 115
    return-void
.end method
