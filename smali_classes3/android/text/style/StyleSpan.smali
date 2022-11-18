.class public Landroid/text/style/StyleSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "StyleSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final blacklist mFontWeightAdjustment:I

.field private final greylist-max-o mStyle:I


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 1
    .param p1, "style"    # I

    .line 60
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Landroid/text/style/StyleSpan;-><init>(II)V

    .line 61
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 0
    .param p1, "style"    # I
    .param p2, "fontWeightAdjustment"    # I

    .line 75
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 76
    iput p1, p0, Landroid/text/style/StyleSpan;->mStyle:I

    .line 77
    iput p2, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    .line 78
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 85
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    .line 88
    return-void
.end method

.method private static blacklist apply(Landroid/graphics/Paint;II)V
    .locals 7
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "style"    # I
    .param p2, "fontWeightAdjustment"    # I

    .line 148
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 149
    .local v0, "old":Landroid/graphics/Typeface;
    if-nez v0, :cond_0

    .line 150
    const/4 v1, 0x0

    .local v1, "oldStyle":I
    goto :goto_0

    .line 152
    .end local v1    # "oldStyle":I
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 155
    .restart local v1    # "oldStyle":I
    :goto_0
    or-int v2, v1, p1

    .line 158
    .local v2, "want":I
    if-nez v0, :cond_1

    .line 159
    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    .local v3, "tf":Landroid/graphics/Typeface;
    goto :goto_1

    .line 161
    .end local v3    # "tf":Landroid/graphics/Typeface;
    :cond_1
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 165
    .restart local v3    # "tf":Landroid/graphics/Typeface;
    :goto_1
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 166
    if-eqz p2, :cond_3

    const v4, 0x7fffffff

    if-eq p2, v4, :cond_3

    .line 168
    nop

    .line 169
    invoke-virtual {v3}, Landroid/graphics/Typeface;->getWeight()I

    move-result v4

    add-int/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/16 v6, 0x3e8

    .line 168
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 171
    .local v4, "newWeight":I
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_2

    move v6, v5

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 172
    .local v6, "italic":Z
    :goto_2
    invoke-static {v3, v4, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v3

    .line 176
    .end local v4    # "newWeight":I
    .end local v6    # "italic":Z
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Typeface;->getStyle()I

    move-result v4

    not-int v4, v4

    and-int/2addr v4, v2

    .line 178
    .local v4, "fake":I
    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_4

    .line 179
    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 182
    :cond_4
    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_5

    .line 183
    const/high16 v5, -0x41800000    # -0.25f

    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 186
    :cond_5
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 187
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getFontWeightAdjustment()I
    .locals 1

    .line 132
    iget v0, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    return v0
.end method

.method public whitelist getSpanTypeId()I
    .locals 1

    .line 92
    invoke-virtual {p0}, Landroid/text/style/StyleSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .locals 1

    .line 98
    const/4 v0, 0x7

    return v0
.end method

.method public whitelist getStyle()I
    .locals 1

    .line 122
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    return v0
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 137
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    iget v1, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    invoke-static {p1, v0, v1}, Landroid/text/style/StyleSpan;->apply(Landroid/graphics/Paint;II)V

    .line 138
    return-void
.end method

.method public whitelist updateMeasureState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 142
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    iget v1, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    invoke-static {p1, v0, v1}, Landroid/text/style/StyleSpan;->apply(Landroid/graphics/Paint;II)V

    .line 143
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 108
    invoke-virtual {p0, p1, p2}, Landroid/text/style/StyleSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 109
    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 114
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget v0, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    return-void
.end method
