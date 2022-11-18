.class public abstract Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;
.super Landroid/os/HwBinder;
.source "IGnssCallback.java"

# interfaces
.implements Landroid/hardware/gnss/V2_1/IGnssCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_1/IGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 994
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 997
    return-object p0
.end method

.method public blacklist debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1013
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1053
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1054
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1055
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1056
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1057
    return-object v0
.end method

.method public final blacklist getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1025
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_2

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x35t
        0x41t
        -0x28t
        0x3at
        -0x21t
        -0x16t
        -0x3ft
        0x6et
        -0x1dt
        -0x1ct
        0x5dt
        0x18t
        0x3at
        0x58t
        -0x21t
        -0x2t
        0x6t
        0x1t
        0x2ct
        -0x35t
        0x5at
        -0x5bt
        -0x44t
        -0x2et
        -0x1ct
        -0xat
        -0x12t
        -0x52t
        0x26t
        -0x61t
        0x69t
        -0x33t
    .end array-data

    :array_1
    .array-data 1
        0x64t
        0x23t
        0x20t
        0x37t
        0x10t
        -0x66t
        0x5et
        0x5ft
        0x53t
        -0x55t
        0x3t
        0x77t
        -0x19t
        0x55t
        -0x14t
        0x49t
        0x4at
        -0x17t
        0x3ft
        -0x35t
        0x52t
        0x79t
        -0x1at
        -0x12t
        -0x59t
        0x1dt
        -0x14t
        0x2et
        0x7at
        -0x3at
        -0x5t
        -0x4t
    .end array-data

    :array_2
    .array-data 1
        -0x76t
        -0x2bt
        0x5bt
        -0x3dt
        0x5bt
        -0x4dt
        -0x58t
        0x3et
        0x65t
        -0x40t
        0x18t
        -0x43t
        -0x3t
        -0x19t
        -0x52t
        0x5et
        -0x44t
        0x74t
        -0x61t
        -0xet
        -0x41t
        0x6bt
        0x79t
        0x41t
        0x2dt
        -0x13t
        0xbt
        -0x3at
        -0x38t
        -0x65t
        -0x69t
        -0x28t
    .end array-data

    :array_3
    .array-data 1
        -0x64t
        -0x4dt
        -0x21t
        0x2bt
        -0x22t
        0x2ct
        0x6ct
        -0x2bt
        -0x3t
        -0x6at
        -0x49t
        -0x3ct
        0x15t
        0x55t
        0x42t
        0xct
        -0x54t
        -0x29t
        -0x1et
        0x76t
        -0x5bt
        0x56t
        -0x3at
        -0x7ct
        -0x51t
        -0x6ft
        -0x49t
        0x46t
        0x1ct
        -0x7at
        0x46t
        0xft
    .end array-data

    :array_4
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final blacklist interfaceChain()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1002
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.gnss@2.1::IGnssCallback"

    const-string v2, "android.hardware.gnss@2.0::IGnssCallback"

    const-string v3, "android.hardware.gnss@1.1::IGnssCallback"

    const-string v4, "android.hardware.gnss@1.0::IGnssCallback"

    const-string v5, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1019
    const-string v0, "android.hardware.gnss@2.1::IGnssCallback"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1041
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 1063
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1065
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 10
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1093
    const-string v0, "android.hardware.gnss@2.1::IGnssCallback"

    const-string v1, "android.hardware.gnss@1.1::IGnssCallback"

    const-string v2, "android.hardware.gnss@2.0::IGnssCallback"

    const-string v3, "android.hidl.base@1.0::IBase"

    const-string v4, "android.hardware.gnss@1.0::IGnssCallback"

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1388
    :sswitch_0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1390
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->notifySyspropsChanged()V

    .line 1391
    goto/16 :goto_1

    .line 1377
    :sswitch_1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1379
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1380
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1381
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1382
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1383
    goto/16 :goto_1

    .line 1367
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1369
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->ping()V

    .line 1370
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1371
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1372
    goto/16 :goto_1

    .line 1362
    :sswitch_3
    goto/16 :goto_1

    .line 1354
    :sswitch_4
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1356
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->setHALInstrumentation()V

    .line 1357
    goto/16 :goto_1

    .line 1320
    :sswitch_5
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1322
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1323
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1325
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1327
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1328
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1329
    const-wide/16 v3, 0xc

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1330
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1331
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 1333
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1334
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1336
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 1340
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1341
    nop

    .line 1331
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1337
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1344
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1346
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1348
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1349
    goto/16 :goto_1

    .line 1309
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1312
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1313
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1315
    goto/16 :goto_1

    .line 1297
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1299
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1300
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1301
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1302
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1303
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1304
    goto/16 :goto_1

    .line 1286
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1289
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1290
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1291
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1292
    goto/16 :goto_1

    .line 1275
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1277
    invoke-static {p2}, Landroid/hardware/gnss/V2_1/IGnssCallback$GnssSvInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1278
    .local v0, "svInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_1/IGnssCallback$GnssSvInfo;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssSvStatusCb_2_1(Ljava/util/ArrayList;)V

    .line 1279
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1280
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1281
    goto/16 :goto_1

    .line 1264
    .end local v0    # "svInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_1/IGnssCallback$GnssSvInfo;>;"
    :sswitch_a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1266
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1267
    .local v0, "capabilities":I
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssSetCapabilitiesCb_2_1(I)V

    .line 1268
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1269
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1270
    goto/16 :goto_1

    .line 1253
    .end local v0    # "capabilities":I
    :sswitch_b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1255
    invoke-static {p2}, Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1256
    .local v0, "svInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssSvStatusCb_2_0(Ljava/util/ArrayList;)V

    .line 1257
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1258
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1259
    goto/16 :goto_1

    .line 1241
    .end local v0    # "svInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;>;"
    :sswitch_c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1244
    .local v0, "independentFromGnss":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1245
    .local v1, "isUserEmergency":Z
    invoke-virtual {p0, v0, v1}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssRequestLocationCb_2_0(ZZ)V

    .line 1246
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1247
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1248
    goto/16 :goto_1

    .line 1229
    .end local v0    # "independentFromGnss":Z
    .end local v1    # "isUserEmergency":Z
    :sswitch_d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1231
    new-instance v0, Landroid/hardware/gnss/V2_0/GnssLocation;

    invoke-direct {v0}, Landroid/hardware/gnss/V2_0/GnssLocation;-><init>()V

    .line 1232
    .local v0, "location":Landroid/hardware/gnss/V2_0/GnssLocation;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/V2_0/GnssLocation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1233
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssLocationCb_2_0(Landroid/hardware/gnss/V2_0/GnssLocation;)V

    .line 1234
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1235
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1236
    goto/16 :goto_1

    .line 1218
    .end local v0    # "location":Landroid/hardware/gnss/V2_0/GnssLocation;
    :sswitch_e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1220
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1221
    .local v0, "capabilities":I
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssSetCapabilitiesCb_2_0(I)V

    .line 1222
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1223
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1224
    goto/16 :goto_1

    .line 1207
    .end local v0    # "capabilities":I
    :sswitch_f
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1209
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1210
    .local v0, "independentFromGnss":Z
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssRequestLocationCb(Z)V

    .line 1211
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1212
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1213
    goto/16 :goto_1

    .line 1196
    .end local v0    # "independentFromGnss":Z
    :sswitch_10
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1199
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssNameCb(Ljava/lang/String;)V

    .line 1200
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1201
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1202
    goto/16 :goto_1

    .line 1184
    .end local v0    # "name":Ljava/lang/String;
    :sswitch_11
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1186
    new-instance v0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;-><init>()V

    .line 1187
    .local v0, "info":Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1188
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssSetSystemInfoCb(Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;)V

    .line 1189
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1190
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1191
    goto/16 :goto_1

    .line 1174
    .end local v0    # "info":Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;
    :sswitch_12
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssRequestTimeCb()V

    .line 1177
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1178
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1179
    goto/16 :goto_1

    .line 1164
    :sswitch_13
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1166
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssReleaseWakelockCb()V

    .line 1167
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1168
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1169
    goto :goto_1

    .line 1154
    :sswitch_14
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1156
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssAcquireWakelockCb()V

    .line 1157
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1158
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1159
    goto :goto_1

    .line 1143
    :sswitch_15
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1146
    .local v0, "capabilities":I
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssSetCapabilitesCb(I)V

    .line 1147
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1148
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1149
    goto :goto_1

    .line 1131
    .end local v0    # "capabilities":I
    :sswitch_16
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1133
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 1134
    .local v0, "timestamp":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1135
    .local v2, "nmea":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssNmeaCb(JLjava/lang/String;)V

    .line 1136
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1137
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1138
    goto :goto_1

    .line 1119
    .end local v0    # "timestamp":J
    .end local v2    # "nmea":Ljava/lang/String;
    :sswitch_17
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1121
    new-instance v0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;-><init>()V

    .line 1122
    .local v0, "svInfo":Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1123
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssSvStatusCb(Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;)V

    .line 1124
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1125
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1126
    goto :goto_1

    .line 1108
    .end local v0    # "svInfo":Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;
    :sswitch_18
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 1111
    .local v0, "status":B
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssStatusCb(B)V

    .line 1112
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1113
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1114
    goto :goto_1

    .line 1096
    .end local v0    # "status":B
    :sswitch_19
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1098
    new-instance v0, Landroid/hardware/gnss/V1_0/GnssLocation;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/GnssLocation;-><init>()V

    .line 1099
    .local v0, "location":Landroid/hardware/gnss/V1_0/GnssLocation;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/V1_0/GnssLocation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1100
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->gnssLocationCb(Landroid/hardware/gnss/V1_0/GnssLocation;)V

    .line 1101
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1102
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1103
    nop

    .line 1400
    .end local v0    # "location":Landroid/hardware/gnss/V1_0/GnssLocation;
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_19
        0x2 -> :sswitch_18
        0x3 -> :sswitch_17
        0x4 -> :sswitch_16
        0x5 -> :sswitch_15
        0x6 -> :sswitch_14
        0x7 -> :sswitch_13
        0x8 -> :sswitch_12
        0x9 -> :sswitch_11
        0xa -> :sswitch_10
        0xb -> :sswitch_f
        0xc -> :sswitch_e
        0xd -> :sswitch_d
        0xe -> :sswitch_c
        0xf -> :sswitch_b
        0x10 -> :sswitch_a
        0x11 -> :sswitch_9
        0xf43484e -> :sswitch_8
        0xf444247 -> :sswitch_7
        0xf445343 -> :sswitch_6
        0xf485348 -> :sswitch_5
        0xf494e54 -> :sswitch_4
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .locals 0

    .line 1047
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1075
    const-string v0, "android.hardware.gnss@2.1::IGnssCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    return-object p0

    .line 1078
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1082
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 1083
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 1037
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnssCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 1069
    const/4 v0, 0x1

    return v0
.end method
