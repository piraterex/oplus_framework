.class public abstract Landroid/hardware/gnss/V1_1/IGnss$Stub;
.super Landroid/os/HwBinder;
.source "IGnss.java"

# interfaces
.implements Landroid/hardware/gnss/V1_1/IGnss;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_1/IGnss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 929
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 932
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

    .line 946
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 984
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 985
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 986
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 987
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 988
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

    .line 958
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

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

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x4bt
        -0xft
        -0xct
        -0x3ft
        -0x43t
        0x6dt
        -0x19t
        0x1at
        -0x72t
        0x71t
        -0x29t
        0xft
        0x57t
        -0x33t
        -0x55t
        -0x70t
        0x4at
        -0x40t
        0x24t
        -0x5ft
        0x2ft
        0x3dt
        -0x12t
        0x3et
        0x21t
        0x73t
        0x77t
        0xat
        0x45t
        -0x7dt
        -0x44t
        -0x3et
    .end array-data

    :array_1
    .array-data 1
        -0x13t
        -0x1at
        -0x69t
        0x10t
        -0x3dt
        -0x57t
        0x5ct
        0x2ct
        -0x42t
        -0x7ft
        -0x72t
        0x6ct
        -0x75t
        -0x49t
        0x2ct
        0x78t
        0x16t
        -0x7et
        0x3ft
        -0x54t
        -0x1bt
        -0x4t
        0x21t
        -0x3ft
        0x77t
        0x31t
        -0x4et
        0x6ft
        0x41t
        -0x27t
        0x4dt
        0x65t
    .end array-data

    :array_2
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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 937
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.gnss@1.1::IGnss"

    const-string v2, "android.hardware.gnss@1.0::IGnss"

    const-string v3, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 952
    const-string v0, "android.hardware.gnss@1.1::IGnss"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 972
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 994
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 996
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 17
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1024
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v0, "android.hardware.gnss@1.1::IGnss"

    const-string v1, "android.hidl.base@1.0::IBase"

    const/4 v2, 0x0

    const-string v3, "android.hardware.gnss@1.0::IGnss"

    const/4 v10, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_d

    .line 1402
    :sswitch_0
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1404
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->notifySyspropsChanged()V

    .line 1405
    goto/16 :goto_d

    .line 1391
    :sswitch_1
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1393
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1394
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1395
    invoke-virtual {v0, v9}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1396
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1397
    goto/16 :goto_d

    .line 1381
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1383
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->ping()V

    .line 1384
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1385
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1386
    goto/16 :goto_d

    .line 1376
    :sswitch_3
    goto/16 :goto_d

    .line 1368
    :sswitch_4
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1370
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->setHALInstrumentation()V

    .line 1371
    goto/16 :goto_d

    .line 1334
    :sswitch_5
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1336
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1337
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1339
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1341
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1342
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1343
    const-wide/16 v3, 0xc

    invoke-virtual {v1, v3, v4, v10}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1344
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1345
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 1347
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1348
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 1350
    .local v10, "_hidl_array_item_1":[B
    if-eqz v10, :cond_0

    array-length v11, v10

    const/16 v12, 0x20

    if-ne v11, v12, :cond_0

    .line 1354
    invoke-virtual {v3, v5, v6, v10}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1355
    nop

    .line 1345
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1351
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v10    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1358
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1360
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1362
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1363
    goto/16 :goto_d

    .line 1323
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1325
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1326
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1327
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1328
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1329
    goto/16 :goto_d

    .line 1311
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1313
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1314
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1315
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1316
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1317
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1318
    goto/16 :goto_d

    .line 1300
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1302
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1303
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1304
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1305
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1306
    goto/16 :goto_d

    .line 1287
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1289
    new-instance v0, Landroid/hardware/gnss/V1_0/GnssLocation;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/GnssLocation;-><init>()V

    .line 1290
    .local v0, "location":Landroid/hardware/gnss/V1_0/GnssLocation;
    invoke-virtual {v0, v8}, Landroid/hardware/gnss/V1_0/GnssLocation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1291
    invoke-virtual {v7, v0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->injectBestLocation(Landroid/hardware/gnss/V1_0/GnssLocation;)Z

    move-result v1

    .line 1292
    .local v1, "_hidl_out_success":Z
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1293
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1294
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1295
    goto/16 :goto_d

    .line 1276
    .end local v0    # "location":Landroid/hardware/gnss/V1_0/GnssLocation;
    .end local v1    # "_hidl_out_success":Z
    :sswitch_a
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1278
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->getExtensionGnssMeasurement_1_1()Landroid/hardware/gnss/V1_1/IGnssMeasurement;

    move-result-object v0

    .line 1279
    .local v0, "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V1_1/IGnssMeasurement;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1280
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Landroid/hardware/gnss/V1_1/IGnssMeasurement;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_1
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1281
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1282
    goto/16 :goto_d

    .line 1265
    .end local v0    # "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V1_1/IGnssMeasurement;
    :sswitch_b
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1267
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->getExtensionGnssConfiguration_1_1()Landroid/hardware/gnss/V1_1/IGnssConfiguration;

    move-result-object v0

    .line 1268
    .local v0, "_hidl_out_gnssConfigurationIface":Landroid/hardware/gnss/V1_1/IGnssConfiguration;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1269
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Landroid/hardware/gnss/V1_1/IGnssConfiguration;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_2
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1270
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1271
    goto/16 :goto_d

    .line 1248
    .end local v0    # "_hidl_out_gnssConfigurationIface":Landroid/hardware/gnss/V1_1/IGnssConfiguration;
    :sswitch_c
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1250
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v11

    .line 1251
    .local v11, "mode":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 1252
    .local v12, "recurrence":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 1253
    .local v13, "minIntervalMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 1254
    .local v14, "preferredAccuracyMeters":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 1255
    .local v15, "preferredTimeMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 1256
    .local v16, "lowPowerMode":Z
    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->setPositionMode_1_1(BIIIIZ)Z

    move-result v0

    .line 1257
    .local v0, "_hidl_out_success":Z
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1258
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1259
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1260
    goto/16 :goto_d

    .line 1236
    .end local v0    # "_hidl_out_success":Z
    .end local v11    # "mode":B
    .end local v12    # "recurrence":I
    .end local v13    # "minIntervalMs":I
    .end local v14    # "preferredAccuracyMeters":I
    .end local v15    # "preferredTimeMs":I
    .end local v16    # "lowPowerMode":Z
    :sswitch_d
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1238
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_1/IGnssCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_1/IGnssCallback;

    move-result-object v0

    .line 1239
    .local v0, "callback":Landroid/hardware/gnss/V1_1/IGnssCallback;
    invoke-virtual {v7, v0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->setCallback_1_1(Landroid/hardware/gnss/V1_1/IGnssCallback;)Z

    move-result v1

    .line 1240
    .restart local v1    # "_hidl_out_success":Z
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1241
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1242
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1243
    goto/16 :goto_d

    .line 1225
    .end local v0    # "callback":Landroid/hardware/gnss/V1_1/IGnssCallback;
    .end local v1    # "_hidl_out_success":Z
    :sswitch_e
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1227
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->getExtensionGnssBatching()Landroid/hardware/gnss/V1_0/IGnssBatching;

    move-result-object v0

    .line 1228
    .local v0, "_hidl_out_batchingIface":Landroid/hardware/gnss/V1_0/IGnssBatching;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1229
    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssBatching;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_3
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1230
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1231
    goto/16 :goto_d

    .line 1214
    .end local v0    # "_hidl_out_batchingIface":Landroid/hardware/gnss/V1_0/IGnssBatching;
    :sswitch_f
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1216
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->getExtensionGnssDebug()Landroid/hardware/gnss/V1_0/IGnssDebug;

    move-result-object v0

    .line 1217
    .local v0, "_hidl_out_debugIface":Landroid/hardware/gnss/V1_0/IGnssDebug;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1218
    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssDebug;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_4
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1219
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1220
    goto/16 :goto_d

    .line 1203
    .end local v0    # "_hidl_out_debugIface":Landroid/hardware/gnss/V1_0/IGnssDebug;
    :sswitch_10
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1205
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->getExtensionGnssConfiguration()Landroid/hardware/gnss/V1_0/IGnssConfiguration;

    move-result-object v0

    .line 1206
    .local v0, "_hidl_out_gnssConfigIface":Landroid/hardware/gnss/V1_0/IGnssConfiguration;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1207
    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssConfiguration;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_5
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1208
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1209
    goto/16 :goto_d

    .line 1192
    .end local v0    # "_hidl_out_gnssConfigIface":Landroid/hardware/gnss/V1_0/IGnssConfiguration;
    :sswitch_11
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1194
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->getExtensionXtra()Landroid/hardware/gnss/V1_0/IGnssXtra;

    move-result-object v0

    .line 1195
    .local v0, "_hidl_out_xtraIface":Landroid/hardware/gnss/V1_0/IGnssXtra;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1196
    if-nez v0, :cond_7

    goto :goto_6

    :cond_7
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssXtra;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_6
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1197
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1198
    goto/16 :goto_d

    .line 1181
    .end local v0    # "_hidl_out_xtraIface":Landroid/hardware/gnss/V1_0/IGnssXtra;
    :sswitch_12
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1183
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->getExtensionGnssNavigationMessage()Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;

    move-result-object v0

    .line 1184
    .local v0, "_hidl_out_gnssNavigationIface":Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1185
    if-nez v0, :cond_8

    goto :goto_7

    :cond_8
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_7
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1186
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1187
    goto/16 :goto_d

    .line 1170
    .end local v0    # "_hidl_out_gnssNavigationIface":Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;
    :sswitch_13
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1172
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->getExtensionGnssMeasurement()Landroid/hardware/gnss/V1_0/IGnssMeasurement;

    move-result-object v0

    .line 1173
    .local v0, "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V1_0/IGnssMeasurement;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1174
    if-nez v0, :cond_9

    goto :goto_8

    :cond_9
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssMeasurement;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_8
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1175
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1176
    goto/16 :goto_d

    .line 1159
    .end local v0    # "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V1_0/IGnssMeasurement;
    :sswitch_14
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->getExtensionGnssNi()Landroid/hardware/gnss/V1_0/IGnssNi;

    move-result-object v0

    .line 1162
    .local v0, "_hidl_out_gnssNiIface":Landroid/hardware/gnss/V1_0/IGnssNi;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1163
    if-nez v0, :cond_a

    goto :goto_9

    :cond_a
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssNi;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_9
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1164
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1165
    goto/16 :goto_d

    .line 1148
    .end local v0    # "_hidl_out_gnssNiIface":Landroid/hardware/gnss/V1_0/IGnssNi;
    :sswitch_15
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1150
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->getExtensionAGnss()Landroid/hardware/gnss/V1_0/IAGnss;

    move-result-object v0

    .line 1151
    .local v0, "_hidl_out_aGnssIface":Landroid/hardware/gnss/V1_0/IAGnss;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1152
    if-nez v0, :cond_b

    goto :goto_a

    :cond_b
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IAGnss;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_a
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1153
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1154
    goto/16 :goto_d

    .line 1137
    .end local v0    # "_hidl_out_aGnssIface":Landroid/hardware/gnss/V1_0/IAGnss;
    :sswitch_16
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1139
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->getExtensionGnssGeofencing()Landroid/hardware/gnss/V1_0/IGnssGeofencing;

    move-result-object v0

    .line 1140
    .local v0, "_hidl_out_gnssGeofencingIface":Landroid/hardware/gnss/V1_0/IGnssGeofencing;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1141
    if-nez v0, :cond_c

    goto :goto_b

    :cond_c
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssGeofencing;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_b
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1142
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1143
    goto/16 :goto_d

    .line 1126
    .end local v0    # "_hidl_out_gnssGeofencingIface":Landroid/hardware/gnss/V1_0/IGnssGeofencing;
    :sswitch_17
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1128
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->getExtensionAGnssRil()Landroid/hardware/gnss/V1_0/IAGnssRil;

    move-result-object v0

    .line 1129
    .local v0, "_hidl_out_aGnssRilIface":Landroid/hardware/gnss/V1_0/IAGnssRil;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1130
    if-nez v0, :cond_d

    goto :goto_c

    :cond_d
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IAGnssRil;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_c
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1131
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1132
    goto/16 :goto_d

    .line 1110
    .end local v0    # "_hidl_out_aGnssRilIface":Landroid/hardware/gnss/V1_0/IAGnssRil;
    :sswitch_18
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1112
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v6

    .line 1113
    .local v6, "mode":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 1114
    .local v11, "recurrence":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 1115
    .local v12, "minIntervalMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 1116
    .local v13, "preferredAccuracyMeters":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 1117
    .local v14, "preferredTimeMs":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->setPositionMode(BIIII)Z

    move-result v0

    .line 1118
    .local v0, "_hidl_out_success":Z
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1119
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1120
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1121
    goto/16 :goto_d

    .line 1099
    .end local v0    # "_hidl_out_success":Z
    .end local v6    # "mode":B
    .end local v11    # "recurrence":I
    .end local v12    # "minIntervalMs":I
    .end local v13    # "preferredAccuracyMeters":I
    .end local v14    # "preferredTimeMs":I
    :sswitch_19
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1101
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1102
    .local v0, "aidingDataFlags":S
    invoke-virtual {v7, v0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->deleteAidingData(S)V

    .line 1103
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1104
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1105
    goto/16 :goto_d

    .line 1085
    .end local v0    # "aidingDataFlags":S
    :sswitch_1a
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1087
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v11

    .line 1088
    .local v11, "latitudeDegrees":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v13

    .line 1089
    .local v13, "longitudeDegrees":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readFloat()F

    move-result v6

    .line 1090
    .local v6, "accuracyMeters":F
    move-object/from16 v0, p0

    move-wide v1, v11

    move-wide v3, v13

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->injectLocation(DDF)Z

    move-result v0

    .line 1091
    .local v0, "_hidl_out_success":Z
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1092
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1093
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1094
    goto :goto_d

    .line 1071
    .end local v0    # "_hidl_out_success":Z
    .end local v6    # "accuracyMeters":F
    .end local v11    # "latitudeDegrees":D
    .end local v13    # "longitudeDegrees":D
    :sswitch_1b
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1073
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v11

    .line 1074
    .local v11, "timeMs":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v13

    .line 1075
    .local v13, "timeReferenceMs":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 1076
    .local v6, "uncertaintyMs":I
    move-object/from16 v0, p0

    move-wide v1, v11

    move-wide v3, v13

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->injectTime(JJI)Z

    move-result v0

    .line 1077
    .restart local v0    # "_hidl_out_success":Z
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1078
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1079
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1080
    goto :goto_d

    .line 1061
    .end local v0    # "_hidl_out_success":Z
    .end local v6    # "uncertaintyMs":I
    .end local v11    # "timeMs":J
    .end local v13    # "timeReferenceMs":J
    :sswitch_1c
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1063
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->cleanup()V

    .line 1064
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1065
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1066
    goto :goto_d

    .line 1050
    :sswitch_1d
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->stop()Z

    move-result v0

    .line 1053
    .restart local v0    # "_hidl_out_success":Z
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1054
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1055
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1056
    goto :goto_d

    .line 1039
    .end local v0    # "_hidl_out_success":Z
    :sswitch_1e
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->start()Z

    move-result v0

    .line 1042
    .restart local v0    # "_hidl_out_success":Z
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1043
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1044
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1045
    goto :goto_d

    .line 1027
    .end local v0    # "_hidl_out_success":Z
    :sswitch_1f
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1029
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IGnssCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssCallback;

    move-result-object v0

    .line 1030
    .local v0, "callback":Landroid/hardware/gnss/V1_0/IGnssCallback;
    invoke-virtual {v7, v0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->setCallback(Landroid/hardware/gnss/V1_0/IGnssCallback;)Z

    move-result v1

    .line 1031
    .restart local v1    # "_hidl_out_success":Z
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1032
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1033
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1034
    nop

    .line 1414
    .end local v0    # "callback":Landroid/hardware/gnss/V1_0/IGnssCallback;
    .end local v1    # "_hidl_out_success":Z
    :goto_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1f
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_1d
        0x4 -> :sswitch_1c
        0x5 -> :sswitch_1b
        0x6 -> :sswitch_1a
        0x7 -> :sswitch_19
        0x8 -> :sswitch_18
        0x9 -> :sswitch_17
        0xa -> :sswitch_16
        0xb -> :sswitch_15
        0xc -> :sswitch_14
        0xd -> :sswitch_13
        0xe -> :sswitch_12
        0xf -> :sswitch_11
        0x10 -> :sswitch_10
        0x11 -> :sswitch_f
        0x12 -> :sswitch_e
        0x13 -> :sswitch_d
        0x14 -> :sswitch_c
        0x15 -> :sswitch_b
        0x16 -> :sswitch_a
        0x17 -> :sswitch_9
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

    .line 978
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1006
    const-string v0, "android.hardware.gnss@1.1::IGnss"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1007
    return-object p0

    .line 1009
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

    .line 1013
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->registerService(Ljava/lang/String;)V

    .line 1014
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 968
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_1/IGnss$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1000
    const/4 v0, 0x1

    return v0
.end method
