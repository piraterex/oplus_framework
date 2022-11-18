.class public abstract Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;
.super Landroid/os/HwBinder;
.source "IGnssCallback.java"

# interfaces
.implements Landroid/hardware/gnss/V2_0/IGnssCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_0/IGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 972
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 975
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

    .line 990
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1029
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1030
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1031
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1032
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1033
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

    .line 1002
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

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

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
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

    :array_1
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

    :array_2
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

    :array_3
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
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 980
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.gnss@2.0::IGnssCallback"

    const-string v2, "android.hardware.gnss@1.1::IGnssCallback"

    const-string v3, "android.hardware.gnss@1.0::IGnssCallback"

    const-string v4, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 996
    const-string v0, "android.hardware.gnss@2.0::IGnssCallback"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1017
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .locals 0

    .line 1039
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1041
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

    .line 1069
    const-string v0, "android.hardware.gnss@1.1::IGnssCallback"

    const-string v1, "android.hardware.gnss@2.0::IGnssCallback"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.gnss@1.0::IGnssCallback"

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1342
    :sswitch_0
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1344
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->notifySyspropsChanged()V

    .line 1345
    goto/16 :goto_1

    .line 1331
    :sswitch_1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1333
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1334
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1335
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1336
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1337
    goto/16 :goto_1

    .line 1321
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->ping()V

    .line 1324
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1325
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1326
    goto/16 :goto_1

    .line 1316
    :sswitch_3
    goto/16 :goto_1

    .line 1308
    :sswitch_4
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->setHALInstrumentation()V

    .line 1311
    goto/16 :goto_1

    .line 1274
    :sswitch_5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1276
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1277
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1279
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1281
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1282
    .local v2, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1283
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1284
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1285
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 1287
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1288
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1290
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 1294
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1295
    nop

    .line 1285
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1291
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1298
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1300
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1302
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1303
    goto/16 :goto_1

    .line 1263
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1265
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1266
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1267
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1268
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1269
    goto/16 :goto_1

    .line 1251
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1253
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1254
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1255
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1256
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1257
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1258
    goto/16 :goto_1

    .line 1240
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1242
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1243
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1244
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1245
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1246
    goto/16 :goto_1

    .line 1229
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1231
    invoke-static {p2}, Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1232
    .local v0, "svInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssSvStatusCb_2_0(Ljava/util/ArrayList;)V

    .line 1233
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1234
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1235
    goto/16 :goto_1

    .line 1217
    .end local v0    # "svInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/gnss/V2_0/IGnssCallback$GnssSvInfo;>;"
    :sswitch_a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1220
    .local v0, "independentFromGnss":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1221
    .local v1, "isUserEmergency":Z
    invoke-virtual {p0, v0, v1}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssRequestLocationCb_2_0(ZZ)V

    .line 1222
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1223
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1224
    goto/16 :goto_1

    .line 1205
    .end local v0    # "independentFromGnss":Z
    .end local v1    # "isUserEmergency":Z
    :sswitch_b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1207
    new-instance v0, Landroid/hardware/gnss/V2_0/GnssLocation;

    invoke-direct {v0}, Landroid/hardware/gnss/V2_0/GnssLocation;-><init>()V

    .line 1208
    .local v0, "location":Landroid/hardware/gnss/V2_0/GnssLocation;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/V2_0/GnssLocation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1209
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssLocationCb_2_0(Landroid/hardware/gnss/V2_0/GnssLocation;)V

    .line 1210
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1211
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1212
    goto/16 :goto_1

    .line 1194
    .end local v0    # "location":Landroid/hardware/gnss/V2_0/GnssLocation;
    :sswitch_c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1197
    .local v0, "capabilities":I
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssSetCapabilitiesCb_2_0(I)V

    .line 1198
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1199
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1200
    goto/16 :goto_1

    .line 1183
    .end local v0    # "capabilities":I
    :sswitch_d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1186
    .local v0, "independentFromGnss":Z
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssRequestLocationCb(Z)V

    .line 1187
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1188
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1189
    goto/16 :goto_1

    .line 1172
    .end local v0    # "independentFromGnss":Z
    :sswitch_e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1175
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssNameCb(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1177
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1178
    goto/16 :goto_1

    .line 1160
    .end local v0    # "name":Ljava/lang/String;
    :sswitch_f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1162
    new-instance v0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;-><init>()V

    .line 1163
    .local v0, "info":Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1164
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssSetSystemInfoCb(Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;)V

    .line 1165
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1166
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1167
    goto/16 :goto_1

    .line 1150
    .end local v0    # "info":Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;
    :sswitch_10
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssRequestTimeCb()V

    .line 1153
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1154
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1155
    goto/16 :goto_1

    .line 1140
    :sswitch_11
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1142
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssReleaseWakelockCb()V

    .line 1143
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1144
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1145
    goto :goto_1

    .line 1130
    :sswitch_12
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssAcquireWakelockCb()V

    .line 1133
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1134
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1135
    goto :goto_1

    .line 1119
    :sswitch_13
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1122
    .local v0, "capabilities":I
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssSetCapabilitesCb(I)V

    .line 1123
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1124
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1125
    goto :goto_1

    .line 1107
    .end local v0    # "capabilities":I
    :sswitch_14
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 1110
    .local v0, "timestamp":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1111
    .local v2, "nmea":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssNmeaCb(JLjava/lang/String;)V

    .line 1112
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1113
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1114
    goto :goto_1

    .line 1095
    .end local v0    # "timestamp":J
    .end local v2    # "nmea":Ljava/lang/String;
    :sswitch_15
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1097
    new-instance v0, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;-><init>()V

    .line 1098
    .local v0, "svInfo":Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1099
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssSvStatusCb(Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;)V

    .line 1100
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1101
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1102
    goto :goto_1

    .line 1084
    .end local v0    # "svInfo":Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;
    :sswitch_16
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 1087
    .local v0, "status":B
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssStatusCb(B)V

    .line 1088
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1089
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1090
    goto :goto_1

    .line 1072
    .end local v0    # "status":B
    :sswitch_17
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1074
    new-instance v0, Landroid/hardware/gnss/V1_0/GnssLocation;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/GnssLocation;-><init>()V

    .line 1075
    .local v0, "location":Landroid/hardware/gnss/V1_0/GnssLocation;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/V1_0/GnssLocation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1076
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->gnssLocationCb(Landroid/hardware/gnss/V1_0/GnssLocation;)V

    .line 1077
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1078
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1079
    nop

    .line 1354
    .end local v0    # "location":Landroid/hardware/gnss/V1_0/GnssLocation;
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_17
        0x2 -> :sswitch_16
        0x3 -> :sswitch_15
        0x4 -> :sswitch_14
        0x5 -> :sswitch_13
        0x6 -> :sswitch_12
        0x7 -> :sswitch_11
        0x8 -> :sswitch_10
        0x9 -> :sswitch_f
        0xa -> :sswitch_e
        0xb -> :sswitch_d
        0xc -> :sswitch_c
        0xd -> :sswitch_b
        0xe -> :sswitch_a
        0xf -> :sswitch_9
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

    .line 1023
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1051
    const-string v0, "android.hardware.gnss@2.0::IGnssCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    return-object p0

    .line 1054
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

    .line 1058
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 1059
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .locals 0

    .line 1013
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IGnssCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1045
    const/4 v0, 0x1

    return v0
.end method
