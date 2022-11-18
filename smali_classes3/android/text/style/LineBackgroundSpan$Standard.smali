.class public Landroid/text/style/LineBackgroundSpan$Standard;
.super Ljava/lang/Object;
.source "LineBackgroundSpan.java"

# interfaces
.implements Landroid/text/style/LineBackgroundSpan;
.implements Landroid/text/ParcelableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/LineBackgroundSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Standard"
.end annotation


# instance fields
.field private final blacklist mColor:I


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 0
    .param p1, "color"    # I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Landroid/text/style/LineBackgroundSpan$Standard;->mColor:I

    .line 77
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/LineBackgroundSpan$Standard;->mColor:I

    .line 84
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "left"    # I
    .param p4, "right"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "lineNumber"    # I

    .line 128
    move-object v6, p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    .line 129
    .local v7, "originColor":I
    move-object v8, p0

    iget v0, v8, Landroid/text/style/LineBackgroundSpan$Standard;->mColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    move/from16 v9, p3

    int-to-float v1, v9

    move/from16 v10, p5

    int-to-float v2, v10

    move/from16 v11, p4

    int-to-float v3, v11

    move/from16 v12, p7

    int-to-float v4, v12

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 131
    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    return-void
.end method

.method public final whitelist getColor()I
    .locals 1

    .line 119
    iget v0, p0, Landroid/text/style/LineBackgroundSpan$Standard;->mColor:I

    return v0
.end method

.method public whitelist getSpanTypeId()I
    .locals 1

    .line 88
    invoke-virtual {p0}, Landroid/text/style/LineBackgroundSpan$Standard;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public blacklist getSpanTypeIdInternal()I
    .locals 1

    .line 94
    const/16 v0, 0x1b

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 104
    invoke-virtual {p0, p1, p2}, Landroid/text/style/LineBackgroundSpan$Standard;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 105
    return-void
.end method

.method public blacklist writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 110
    iget v0, p0, Landroid/text/style/LineBackgroundSpan$Standard;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    return-void
.end method
