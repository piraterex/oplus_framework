.class public Landroid/text/style/BulletSpan;
.super Ljava/lang/Object;
.source "BulletSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/ParcelableSpan;


# static fields
.field private static final greylist-max-o STANDARD_BULLET_RADIUS:I = 0x4

.field private static final greylist-max-o STANDARD_COLOR:I = 0x0

.field public static final whitelist STANDARD_GAP_WIDTH:I = 0x2


# instance fields
.field private final greylist-max-o mBulletRadius:I

.field private final greylist-max-p mColor:I

.field private final greylist-max-p mGapWidth:I

.field private final greylist-max-p mWantColor:Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 3

    .line 87
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v1, v2}, Landroid/text/style/BulletSpan;-><init>(IIZI)V

    .line 88
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 2
    .param p1, "gapWidth"    # I

    .line 96
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v0, v1}, Landroid/text/style/BulletSpan;-><init>(IIZI)V

    .line 97
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 2
    .param p1, "gapWidth"    # I
    .param p2, "color"    # I

    .line 107
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/text/style/BulletSpan;-><init>(IIZI)V

    .line 108
    return-void
.end method

.method public constructor whitelist <init>(III)V
    .locals 1
    .param p1, "gapWidth"    # I
    .param p2, "color"    # I
    .param p3, "bulletRadius"    # I

    .line 119
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/text/style/BulletSpan;-><init>(IIZI)V

    .line 120
    return-void
.end method

.method private constructor greylist-max-o <init>(IIZI)V
    .locals 0
    .param p1, "gapWidth"    # I
    .param p2, "color"    # I
    .param p3, "wantColor"    # Z
    .param p4, "bulletRadius"    # I

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    .line 125
    iput p4, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    .line 126
    iput p2, p0, Landroid/text/style/BulletSpan;->mColor:I

    .line 127
    iput-boolean p3, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    .line 128
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/BulletSpan;->mColor:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    .line 138
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "x"    # I
    .param p4, "dir"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "first"    # Z
    .param p12, "layout"    # Landroid/text/Layout;

    .line 207
    move-object v0, p0

    move-object v1, p2

    move/from16 v2, p9

    move-object/from16 v3, p12

    move-object/from16 v4, p8

    check-cast v4, Landroid/text/Spanned;

    invoke-interface {v4, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 208
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v4

    .line 209
    .local v4, "style":Landroid/graphics/Paint$Style;
    const/4 v5, 0x0

    .line 211
    .local v5, "oldcolor":I
    iget-boolean v6, v0, Landroid/text/style/BulletSpan;->mWantColor:Z

    if-eqz v6, :cond_0

    .line 212
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    .line 213
    iget v6, v0, Landroid/text/style/BulletSpan;->mColor:I

    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 216
    :cond_0
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 218
    if-eqz v3, :cond_1

    .line 222
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 223
    .local v6, "line":I
    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineExtra(I)I

    move-result v7

    sub-int v7, p7, v7

    .end local p7    # "bottom":I
    .local v7, "bottom":I
    goto :goto_0

    .line 218
    .end local v6    # "line":I
    .end local v7    # "bottom":I
    .restart local p7    # "bottom":I
    :cond_1
    move/from16 v7, p7

    .line 226
    .end local p7    # "bottom":I
    .restart local v7    # "bottom":I
    :goto_0
    add-int v6, p5, v7

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    .line 227
    .local v6, "yPosition":F
    iget v8, v0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    mul-int v9, p4, v8

    add-int/2addr v9, p3

    int-to-float v9, v9

    .line 229
    .local v9, "xPosition":F
    int-to-float v8, v8

    move-object v10, p1

    invoke-virtual {p1, v9, v6, v8, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 231
    iget-boolean v8, v0, Landroid/text/style/BulletSpan;->mWantColor:Z

    if-eqz v8, :cond_2

    .line 232
    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    :cond_2
    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_1

    .line 207
    .end local v4    # "style":Landroid/graphics/Paint$Style;
    .end local v5    # "oldcolor":I
    .end local v6    # "yPosition":F
    .end local v7    # "bottom":I
    .end local v9    # "xPosition":F
    .restart local p7    # "bottom":I
    :cond_3
    move-object v10, p1

    move/from16 v7, p7

    .line 237
    .end local p7    # "bottom":I
    .restart local v7    # "bottom":I
    :goto_1
    return-void
.end method

.method public whitelist getBulletRadius()I
    .locals 1

    .line 190
    iget v0, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    return v0
.end method

.method public whitelist getColor()I
    .locals 1

    .line 199
    iget v0, p0, Landroid/text/style/BulletSpan;->mColor:I

    return v0
.end method

.method public whitelist getGapWidth()I
    .locals 1

    .line 181
    iget v0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    return v0
.end method

.method public whitelist getLeadingMargin(Z)I
    .locals 2
    .param p1, "first"    # Z

    .line 172
    iget v0, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getSpanTypeId()I
    .locals 1

    .line 142
    invoke-virtual {p0}, Landroid/text/style/BulletSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .locals 1

    .line 148
    const/16 v0, 0x8

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 158
    invoke-virtual {p0, p1, p2}, Landroid/text/style/BulletSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 159
    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 164
    iget v0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-boolean v0, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v0, p0, Landroid/text/style/BulletSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return-void
.end method
