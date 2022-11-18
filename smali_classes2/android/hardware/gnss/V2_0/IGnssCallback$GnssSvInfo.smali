.class public final Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;
.super Ljava/lang/Object;
.source "IGnssCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_0/IGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssSvInfo"
.end annotation


# instance fields
.field public blacklist constellation:B

.field public blacklist v1_0:Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    new-instance v0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;->v1_0:Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;

    .line 249
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;->constellation:B

    return-void
.end method

.method public static final blacklist readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;",
            ">;"
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 301
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 302
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x1c

    int-to-long v5, v3

    .line 303
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 302
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 306
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 307
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 308
    new-instance v5, Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;

    invoke-direct {v5}, Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;-><init>()V

    .line 309
    .local v5, "_hidl_vec_element":Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;
    mul-int/lit8 v6, v4, 0x1c

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 310
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    .end local v5    # "_hidl_vec_element":Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 314
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_index_0":I
    :cond_0
    return-object v0
.end method

.method public static final blacklist writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;",
            ">;)V"
        }
    .end annotation

    .line 331
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 333
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 334
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 335
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 336
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x1c

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 337
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 338
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;

    mul-int/lit8 v5, v3, 0x1c

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 337
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 340
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 343
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 344
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 253
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 254
    return v0

    .line 256
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 257
    return v1

    .line 259
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;

    if-eq v2, v3, :cond_2

    .line 260
    return v1

    .line 262
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;

    .line 263
    .local v2, "other":Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;
    iget-object v3, p0, Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;->v1_0:Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;

    iget-object v4, v2, Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;->v1_0:Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 264
    return v1

    .line 266
    :cond_3
    iget-byte v3, p0, Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;->constellation:B

    iget-byte v4, v2, Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;->constellation:B

    if-eq v3, v4, :cond_4

    .line 267
    return v1

    .line 269
    :cond_4
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 274
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;->v1_0:Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;

    .line 275
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;->constellation:B

    .line 276
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 274
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 319
    iget-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;->v1_0:Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 320
    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;->constellation:B

    .line 321
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 292
    const-wide/16 v0, 0x1c

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 293
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 294
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string v1, ".v1_0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v1, p0, Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;->v1_0:Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 285
    const-string v1, ", .constellation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-byte v1, p0, Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;->constellation:B

    invoke-static {v1}, Landroid/hardware/gnss/V2_0/GnssConstellationType;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 348
    iget-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;->v1_0:Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 349
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;->constellation:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 350
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 324
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 325
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 326
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 327
    return-void
.end method
