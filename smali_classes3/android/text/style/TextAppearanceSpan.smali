.class public Landroid/text/style/TextAppearanceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "TextAppearanceSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final blacklist mElegantTextHeight:Z

.field private final greylist-max-o mFamilyName:Ljava/lang/String;

.field private final blacklist mFontFeatureSettings:Ljava/lang/String;

.field private final blacklist mFontVariationSettings:Ljava/lang/String;

.field private final blacklist mHasElegantTextHeight:Z

.field private final blacklist mHasLetterSpacing:Z

.field private final blacklist mLetterSpacing:F

.field private final blacklist mShadowColor:I

.field private final blacklist mShadowDx:F

.field private final blacklist mShadowDy:F

.field private final blacklist mShadowRadius:F

.field private final greylist-max-o mStyle:I

.field private final greylist-max-o mTextColor:Landroid/content/res/ColorStateList;

.field private final greylist-max-o mTextColorLink:Landroid/content/res/ColorStateList;

.field private final blacklist mTextFontWeight:I

.field private final blacklist mTextLocales:Landroid/os/LocaleList;

.field private final greylist-max-o mTextSize:I

.field private final greylist-max-o mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appearance"    # I

    .line 91
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;II)V

    .line 92
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appearance"    # I
    .param p3, "colorList"    # I

    .line 102
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 105
    sget-object v0, Lcom/android/internal/R$styleable;->TextAppearance:[I

    .line 106
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 111
    .local v1, "textColor":Landroid/content/res/ColorStateList;
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    .line 113
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    .line 116
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v4

    const/16 v5, 0xc

    const/4 v6, 0x0

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->canLoadUnsafeResources()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 120
    :cond_0
    iput-object v6, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    .line 122
    :goto_0
    iget-object v4, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v4, :cond_1

    .line 123
    iput-object v6, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    goto :goto_1

    .line 125
    :cond_1
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "family":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 127
    iput-object v4, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    goto :goto_1

    .line 129
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 131
    .local v5, "tf":I
    packed-switch v5, :pswitch_data_0

    .line 145
    iput-object v6, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    goto :goto_1

    .line 141
    :pswitch_0
    const-string/jumbo v7, "monospace"

    iput-object v7, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    .line 142
    goto :goto_1

    .line 137
    :pswitch_1
    const-string/jumbo v7, "serif"

    iput-object v7, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    .line 138
    goto :goto_1

    .line 133
    :pswitch_2
    const-string/jumbo v7, "sans"

    iput-object v7, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    .line 134
    nop

    .line 151
    .end local v4    # "family":Ljava/lang/String;
    .end local v5    # "tf":I
    :goto_1
    const/16 v4, 0x12

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    .line 154
    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "localeString":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 157
    invoke-static {v3}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v4

    .line 158
    .local v4, "localeList":Landroid/os/LocaleList;
    invoke-virtual {v4}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 159
    iput-object v4, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    goto :goto_2

    .line 161
    :cond_3
    iput-object v6, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    .line 163
    .end local v4    # "localeList":Landroid/os/LocaleList;
    :goto_2
    goto :goto_3

    .line 164
    :cond_4
    iput-object v6, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    .line 167
    :goto_3
    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    .line 169
    const/16 v4, 0x8

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    .line 171
    const/16 v4, 0x9

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    .line 173
    const/4 v4, 0x7

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    .line 176
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    iput-boolean v6, p0, Landroid/text/style/TextAppearanceSpan;->mHasElegantTextHeight:Z

    .line 178
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    .line 181
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    iput-boolean v4, p0, Landroid/text/style/TextAppearanceSpan;->mHasLetterSpacing:Z

    .line 183
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/text/style/TextAppearanceSpan;->mLetterSpacing:F

    .line 186
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    .line 189
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    .line 192
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 194
    if-ltz p3, :cond_5

    .line 195
    const v2, 0x1030005

    sget-object v4, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 198
    invoke-virtual {v0, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 199
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 202
    :cond_5
    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    .line 203
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 235
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 242
    :cond_0
    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    .line 244
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 247
    :cond_1
    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    .line 249
    :goto_1
    invoke-static {p1}, Landroid/graphics/LeakyTypefaceStorage;->readTypefaceFromParcel(Landroid/os/Parcel;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    .line 252
    const-class v0, Landroid/os/LocaleList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/os/LocaleList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mHasElegantTextHeight:Z

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mHasLetterSpacing:Z

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mLetterSpacing:F

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "family"    # Ljava/lang/String;
    .param p2, "style"    # I
    .param p3, "size"    # I
    .param p4, "color"    # Landroid/content/res/ColorStateList;
    .param p5, "linkColor"    # Landroid/content/res/ColorStateList;

    .line 210
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 211
    iput-object p1, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    .line 212
    iput p2, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    .line 213
    iput p3, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    .line 214
    iput-object p4, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    .line 215
    iput-object p5, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    .line 218
    const/4 v1, -0x1

    iput v1, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    .line 219
    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    .line 221
    const/4 v1, 0x0

    iput v1, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    .line 222
    iput v1, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    .line 223
    iput v1, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    .line 224
    const/4 v2, 0x0

    iput v2, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    .line 226
    iput-boolean v2, p0, Landroid/text/style/TextAppearanceSpan;->mHasElegantTextHeight:Z

    .line 227
    iput-boolean v2, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    .line 228
    iput-boolean v2, p0, Landroid/text/style/TextAppearanceSpan;->mHasLetterSpacing:Z

    .line 229
    iput v1, p0, Landroid/text/style/TextAppearanceSpan;->mLetterSpacing:F

    .line 231
    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    .line 232
    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    .line 233
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getFamily()Ljava/lang/String;
    .locals 1

    .line 326
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFontFeatureSettings()Ljava/lang/String;
    .locals 1

    .line 425
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFontVariationSettings()Ljava/lang/String;
    .locals 1

    .line 434
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLinkTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 342
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getShadowColor()I
    .locals 1

    .line 392
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    return v0
.end method

.method public whitelist getShadowDx()F
    .locals 1

    .line 400
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    return v0
.end method

.method public whitelist getShadowDy()F
    .locals 1

    .line 408
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    return v0
.end method

.method public whitelist getShadowRadius()F
    .locals 1

    .line 416
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    return v0
.end method

.method public whitelist getSpanTypeId()I
    .locals 1

    .line 269
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .locals 1

    .line 274
    const/16 v0, 0x11

    return v0
.end method

.method public whitelist getTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 334
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getTextFontWeight()I
    .locals 1

    .line 366
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    return v0
.end method

.method public whitelist getTextLocales()Landroid/os/LocaleList;
    .locals 1

    .line 375
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public whitelist getTextSize()I
    .locals 1

    .line 350
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    return v0
.end method

.method public whitelist getTextStyle()I
    .locals 1

    .line 358
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    return v0
.end method

.method public whitelist getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 384
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public whitelist isElegantTextHeight()Z
    .locals 1

    .line 442
    iget-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    return v0
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .locals 4
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 447
    invoke-virtual {p0, p1}, Landroid/text/style/TextAppearanceSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 449
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 450
    iget-object v2, p1, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 453
    :cond_0
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 454
    iget-object v2, p1, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p1, Landroid/text/TextPaint;->linkColor:I

    .line 457
    :cond_1
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    if-eqz v0, :cond_2

    .line 458
    iget v1, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    iget v2, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    iget v3, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 460
    :cond_2
    return-void
.end method

.method public whitelist updateMeasureState(Landroid/text/TextPaint;)V
    .locals 6
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 465
    const/4 v0, 0x0

    .line 467
    .local v0, "style":I
    iget-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 468
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    .line 469
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    .local v1, "styledTypeface":Landroid/graphics/Typeface;
    goto :goto_2

    .line 470
    .end local v1    # "styledTypeface":Landroid/graphics/Typeface;
    :cond_0
    iget-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    if-nez v1, :cond_2

    iget v1, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    if-eqz v1, :cond_1

    goto :goto_0

    .line 487
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "styledTypeface":Landroid/graphics/Typeface;
    goto :goto_2

    .line 471
    .end local v1    # "styledTypeface":Landroid/graphics/Typeface;
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 473
    .local v1, "tf":Landroid/graphics/Typeface;
    if-eqz v1, :cond_3

    .line 474
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    .line 477
    :cond_3
    iget v2, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    or-int/2addr v0, v2

    .line 479
    iget-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 480
    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    move-object v1, v2

    .local v2, "styledTypeface":Landroid/graphics/Typeface;
    goto :goto_1

    .line 481
    .end local v2    # "styledTypeface":Landroid/graphics/Typeface;
    :cond_4
    if-nez v1, :cond_5

    .line 482
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    move-object v1, v2

    .restart local v2    # "styledTypeface":Landroid/graphics/Typeface;
    goto :goto_1

    .line 484
    .end local v2    # "styledTypeface":Landroid/graphics/Typeface;
    :cond_5
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    move-object v1, v2

    .line 486
    .local v1, "styledTypeface":Landroid/graphics/Typeface;
    :goto_1
    nop

    .line 490
    :goto_2
    if-eqz v1, :cond_a

    .line 492
    iget v2, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    const/4 v3, 0x1

    if-ltz v2, :cond_7

    .line 493
    const/16 v4, 0x3e8

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 494
    .local v2, "weight":I
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_6

    move v4, v3

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    .line 495
    .local v4, "italic":Z
    :goto_3
    invoke-static {v1, v2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 496
    .end local v4    # "italic":Z
    .local v2, "readyTypeface":Landroid/graphics/Typeface;
    goto :goto_4

    .line 497
    .end local v2    # "readyTypeface":Landroid/graphics/Typeface;
    :cond_7
    move-object v2, v1

    .line 500
    .restart local v2    # "readyTypeface":Landroid/graphics/Typeface;
    :goto_4
    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v4

    not-int v4, v4

    and-int/2addr v4, v0

    .line 502
    .local v4, "fake":I
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_8

    .line 503
    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 506
    :cond_8
    and-int/lit8 v3, v4, 0x2

    if-eqz v3, :cond_9

    .line 507
    const/high16 v3, -0x41800000    # -0.25f

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 510
    :cond_9
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 513
    .end local v2    # "readyTypeface":Landroid/graphics/Typeface;
    .end local v4    # "fake":I
    :cond_a
    iget v2, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    if-lez v2, :cond_b

    .line 514
    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 517
    :cond_b
    iget-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    if-eqz v2, :cond_c

    .line 518
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTextLocales(Landroid/os/LocaleList;)V

    .line 521
    :cond_c
    iget-boolean v2, p0, Landroid/text/style/TextAppearanceSpan;->mHasElegantTextHeight:Z

    if-eqz v2, :cond_d

    .line 522
    iget-boolean v2, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setElegantTextHeight(Z)V

    .line 525
    :cond_d
    iget-boolean v2, p0, Landroid/text/style/TextAppearanceSpan;->mHasLetterSpacing:Z

    if-eqz v2, :cond_e

    .line 526
    iget v2, p0, Landroid/text/style/TextAppearanceSpan;->mLetterSpacing:F

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 529
    :cond_e
    iget-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 530
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 533
    :cond_f
    iget-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 534
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 536
    :cond_10
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 282
    invoke-virtual {p0, p1, p2}, Landroid/text/style/TextAppearanceSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 283
    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 287
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    :goto_0
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 300
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    :goto_1
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/LeakyTypefaceStorage;->writeTypefaceToParcel(Landroid/graphics/Typeface;Landroid/os/Parcel;)V

    .line 304
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextFontWeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 307
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 308
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDx:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 309
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowDy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 310
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mShadowColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mHasElegantTextHeight:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 313
    iget-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mElegantTextHeight:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 314
    iget-boolean v0, p0, Landroid/text/style/TextAppearanceSpan;->mHasLetterSpacing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 315
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mLetterSpacing:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 317
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontFeatureSettings:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFontVariationSettings:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    return-void
.end method
