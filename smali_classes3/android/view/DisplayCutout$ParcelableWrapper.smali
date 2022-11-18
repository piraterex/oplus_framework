.class public final Landroid/view/DisplayCutout$ParcelableWrapper;
.super Ljava/lang/Object;
.source "DisplayCutout.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayCutout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParcelableWrapper"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/DisplayCutout$ParcelableWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mInner:Landroid/view/DisplayCutout;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1322
    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper$1;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper$1;-><init>()V

    sput-object v0, Landroid/view/DisplayCutout$ParcelableWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 1268
    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    invoke-direct {p0, v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>(Landroid/view/DisplayCutout;)V

    .line 1269
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/view/DisplayCutout;)V
    .locals 0
    .param p1, "cutout"    # Landroid/view/DisplayCutout;

    .line 1271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1272
    iput-object p1, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    .line 1273
    return-void
.end method

.method public static greylist-max-o readCutoutFromParcel(Landroid/os/Parcel;)Landroid/view/DisplayCutout;
    .locals 31
    .param p0, "in"    # Landroid/os/Parcel;

    .line 1340
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1341
    .local v1, "variant":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1342
    const/4 v2, 0x0

    return-object v2

    .line 1344
    :cond_0
    if-nez v1, :cond_1

    .line 1345
    sget-object v2, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    return-object v2

    .line 1348
    :cond_1
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 1349
    .local v2, "safeInsets":Landroid/graphics/Rect;
    const/4 v3, 0x4

    new-array v10, v3, [Landroid/graphics/Rect;

    .line 1350
    .local v10, "bounds":[Landroid/graphics/Rect;
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v10, v3}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 1351
    sget-object v3, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/graphics/Insets;

    .line 1352
    .local v11, "waterfallInsets":Landroid/graphics/Insets;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1353
    .local v22, "displayWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1354
    .local v23, "displayHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1355
    .local v24, "physicalDisplayWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 1356
    .local v25, "physicalDisplayHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readFloat()F

    move-result v26

    .line 1357
    .local v26, "density":F
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 1358
    .local v27, "cutoutSpec":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 1359
    .local v28, "rotation":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readFloat()F

    move-result v29

    .line 1360
    .local v29, "scale":F
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readFloat()F

    move-result v30

    .line 1361
    .local v30, "physicalPixelDisplaySizeRatio":F
    new-instance v7, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-object v12, v7

    move/from16 v13, v22

    move/from16 v14, v23

    move/from16 v15, v24

    move/from16 v16, v25

    move/from16 v17, v26

    move-object/from16 v18, v27

    move/from16 v19, v28

    move/from16 v20, v29

    move/from16 v21, v30

    invoke-direct/range {v12 .. v21}, Landroid/view/DisplayCutout$CutoutPathParserInfo;-><init>(IIIIFLjava/lang/String;IFF)V

    .line 1365
    .local v7, "info":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    new-instance v12, Landroid/view/DisplayCutout;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v12

    move-object v4, v2

    move-object v5, v11

    move-object v6, v10

    invoke-direct/range {v3 .. v9}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;ZLandroid/view/DisplayCutout-IA;)V

    return-object v12
.end method

.method public static greylist-max-o writeCutoutToParcel(Landroid/view/DisplayCutout;Landroid/os/Parcel;I)V
    .locals 1
    .param p0, "cutout"    # Landroid/view/DisplayCutout;
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1291
    if-nez p0, :cond_0

    .line 1292
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1293
    :cond_0
    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    if-ne p0, v0, :cond_1

    .line 1294
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1296
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1297
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmSafeInsets(Landroid/view/DisplayCutout;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1298
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmBounds(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$Bounds;

    move-result-object v0

    invoke-static {v0}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRects(Landroid/view/DisplayCutout$Bounds;)[Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1299
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmWaterfallInsets(Landroid/view/DisplayCutout;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1300
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1301
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1302
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1303
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1304
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDensity()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1305
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getCutoutSpec()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1306
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getRotation()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1307
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getScale()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1308
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalPixelDisplaySizeRatio()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1310
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 1277
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 1409
    instance-of v0, p1, Landroid/view/DisplayCutout$ParcelableWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    move-object v1, p1

    check-cast v1, Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v1, v1, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    .line 1410
    invoke-virtual {v0, v1}, Landroid/view/DisplayCutout;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1409
    :goto_0
    return v0
.end method

.method public greylist-max-o get()Landroid/view/DisplayCutout;
    .locals 1

    .line 1370
    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 1404
    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1319
    invoke-static {p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->readCutoutFromParcel(Landroid/os/Parcel;)Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    .line 1320
    return-void
.end method

.method public blacklist scale(F)V
    .locals 16
    .param p1, "scale"    # F

    .line 1382
    move-object/from16 v0, p0

    move/from16 v11, p1

    iget-object v1, v0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v12

    .line 1383
    .local v12, "safeInsets":Landroid/graphics/Rect;
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->scale(F)V

    .line 1384
    new-instance v1, Landroid/view/DisplayCutout$Bounds;

    iget-object v2, v0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v2}, Landroid/view/DisplayCutout;->-$$Nest$fgetmBounds(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$Bounds;

    move-result-object v2

    invoke-static {v2}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$fgetmRects(Landroid/view/DisplayCutout$Bounds;)[Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/view/DisplayCutout$Bounds;-><init>([Landroid/graphics/Rect;ZLandroid/view/DisplayCutout$Bounds-IA;)V

    move-object v13, v1

    .line 1385
    .local v13, "bounds":Landroid/view/DisplayCutout$Bounds;
    invoke-static {v13, v11}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mscale(Landroid/view/DisplayCutout$Bounds;F)V

    .line 1386
    iget-object v1, v0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v1}, Landroid/view/DisplayCutout;->-$$Nest$fgetmWaterfallInsets(Landroid/view/DisplayCutout;)Landroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v14

    .line 1387
    .local v14, "waterfallInsets":Landroid/graphics/Rect;
    invoke-virtual {v14, v11}, Landroid/graphics/Rect;->scale(F)V

    .line 1388
    new-instance v15, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    iget-object v1, v0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v1}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v1

    .line 1389
    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayWidth()I

    move-result v2

    iget-object v1, v0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v1}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v1

    .line 1390
    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayHeight()I

    move-result v3

    iget-object v1, v0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v1}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v1

    .line 1391
    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayWidth()I

    move-result v4

    iget-object v1, v0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v1}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v1

    .line 1392
    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayHeight()I

    move-result v5

    iget-object v1, v0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v1}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v1

    .line 1393
    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDensity()F

    move-result v6

    iget-object v1, v0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v1}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v1

    .line 1394
    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getCutoutSpec()Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v1}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v1

    .line 1395
    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getRotation()I

    move-result v8

    iget-object v1, v0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v1}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v1

    .line 1397
    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalPixelDisplaySizeRatio()F

    move-result v10

    move-object v1, v15

    move/from16 v9, p1

    invoke-direct/range {v1 .. v10}, Landroid/view/DisplayCutout$CutoutPathParserInfo;-><init>(IIIIFLjava/lang/String;IFF)V

    move-object v6, v15

    .line 1399
    .local v6, "info":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    new-instance v1, Landroid/view/DisplayCutout;

    invoke-static {v14}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v4

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, v12

    move-object v5, v13

    invoke-direct/range {v2 .. v7}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;Landroid/view/DisplayCutout-IA;)V

    iput-object v1, v0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    .line 1400
    return-void
.end method

.method public greylist-max-o set(Landroid/view/DisplayCutout$ParcelableWrapper;)V
    .locals 1
    .param p1, "cutout"    # Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 1374
    invoke-virtual {p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    .line 1375
    return-void
.end method

.method public greylist-max-o set(Landroid/view/DisplayCutout;)V
    .locals 0
    .param p1, "cutout"    # Landroid/view/DisplayCutout;

    .line 1378
    iput-object p1, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    .line 1379
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 1415
    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1282
    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v0, p1, p2}, Landroid/view/DisplayCutout$ParcelableWrapper;->writeCutoutToParcel(Landroid/view/DisplayCutout;Landroid/os/Parcel;I)V

    .line 1283
    return-void
.end method
