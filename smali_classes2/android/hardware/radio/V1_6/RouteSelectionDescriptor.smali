.class public final Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;
.super Ljava/lang/Object;
.source "RouteSelectionDescriptor.java"


# instance fields
.field public blacklist dnn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist precedence:B

.field public blacklist sessionType:Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;

.field public blacklist sliceInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/SliceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist sscMode:Landroid/hardware/radio/V1_6/OptionalSscMode;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->precedence:B

    .line 13
    new-instance v0, Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sessionType:Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;

    .line 14
    new-instance v0, Landroid/hardware/radio/V1_6/OptionalSscMode;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/OptionalSscMode;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sscMode:Landroid/hardware/radio/V1_6/OptionalSscMode;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sliceInfo:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->dnn:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 94
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 95
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x30

    int-to-long v5, v3

    .line 96
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 95
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 99
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 100
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 101
    new-instance v5, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;

    invoke-direct {v5}, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;-><init>()V

    .line 102
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;
    mul-int/lit8 v6, v4, 0x30

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 103
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 107
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
            "Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 157
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 159
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 160
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 161
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 162
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 163
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 164
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;

    mul-int/lit8 v5, v3, 0x30

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 163
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 169
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 170
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 28
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 29
    return v0

    .line 31
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 32
    return v1

    .line 34
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;

    if-eq v2, v3, :cond_2

    .line 35
    return v1

    .line 37
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;

    .line 38
    .local v2, "other":Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;
    iget-byte v3, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->precedence:B

    iget-byte v4, v2, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->precedence:B

    if-eq v3, v4, :cond_3

    .line 39
    return v1

    .line 41
    :cond_3
    iget-object v3, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sessionType:Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sessionType:Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 42
    return v1

    .line 44
    :cond_4
    iget-object v3, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sscMode:Landroid/hardware/radio/V1_6/OptionalSscMode;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sscMode:Landroid/hardware/radio/V1_6/OptionalSscMode;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 45
    return v1

    .line 47
    :cond_5
    iget-object v3, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sliceInfo:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sliceInfo:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 48
    return v1

    .line 50
    :cond_6
    iget-object v3, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->dnn:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->dnn:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 51
    return v1

    .line 53
    :cond_7
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 58
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->precedence:B

    .line 59
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sessionType:Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;

    .line 60
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sscMode:Landroid/hardware/radio/V1_6/OptionalSscMode;

    .line 61
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sliceInfo:Ljava/util/ArrayList;

    .line 62
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->dnn:Ljava/util/ArrayList;

    .line 63
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 58
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 17
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 112
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const-wide/16 v11, 0x0

    add-long v1, p3, v11

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v1

    iput-byte v1, v0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->precedence:B

    .line 113
    iget-object v1, v0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sessionType:Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;

    const-wide/16 v2, 0x4

    add-long v2, p3, v2

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 114
    iget-object v1, v0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sscMode:Landroid/hardware/radio/V1_6/OptionalSscMode;

    const-wide/16 v2, 0xc

    add-long v2, p3, v2

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/hardware/radio/V1_6/OptionalSscMode;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 116
    const-wide/16 v1, 0x10

    add-long v3, p3, v1

    const-wide/16 v13, 0x8

    add-long/2addr v3, v13

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v15

    .line 117
    .local v15, "_hidl_vec_size":I
    mul-int/lit8 v3, v15, 0x14

    int-to-long v3, v3

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v1, p3, v1

    add-long v7, v1, v11

    .line 117
    const/16 v16, 0x1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 121
    .local v1, "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sliceInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 122
    const/4 v2, 0x0

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v15, :cond_0

    .line 123
    new-instance v3, Landroid/hardware/radio/V1_6/SliceInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_6/SliceInfo;-><init>()V

    .line 124
    .local v3, "_hidl_vec_element":Landroid/hardware/radio/V1_6/SliceInfo;
    mul-int/lit8 v4, v2, 0x14

    int-to-long v4, v4

    invoke-virtual {v3, v9, v1, v4, v5}, Landroid/hardware/radio/V1_6/SliceInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 125
    iget-object v4, v0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sliceInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .end local v3    # "_hidl_vec_element":Landroid/hardware/radio/V1_6/SliceInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v15    # "_hidl_vec_size":I
    :cond_0
    const-wide/16 v1, 0x20

    add-long v3, p3, v1

    add-long/2addr v3, v13

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    .line 130
    .local v13, "_hidl_vec_size":I
    mul-int/lit8 v3, v13, 0x10

    int-to-long v3, v3

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v1, p3, v1

    add-long v7, v1, v11

    const/4 v11, 0x1

    .line 130
    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move v8, v11

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v11

    .line 134
    .local v11, "childBlob":Landroid/os/HwBlob;
    iget-object v1, v0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->dnn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 135
    const/4 v1, 0x0

    move v12, v1

    .local v12, "_hidl_index_0":I
    :goto_1
    if-ge v12, v13, :cond_1

    .line 136
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 137
    .local v1, "_hidl_vec_element":Ljava/lang/String;
    mul-int/lit8 v2, v12, 0x10

    int-to-long v2, v2

    invoke-virtual {v11, v2, v3}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v14

    .line 139
    .end local v1    # "_hidl_vec_element":Ljava/lang/String;
    .local v14, "_hidl_vec_element":Ljava/lang/String;
    nop

    .line 140
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v2, v1

    .line 141
    invoke-virtual {v11}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    mul-int/lit8 v1, v12, 0x10

    add-int/lit8 v1, v1, 0x0

    int-to-long v6, v1

    const/4 v8, 0x0

    .line 139
    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 144
    iget-object v1, v0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->dnn:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v14    # "_hidl_vec_element":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 147
    .end local v11    # "childBlob":Landroid/os/HwBlob;
    .end local v12    # "_hidl_index_0":I
    .end local v13    # "_hidl_vec_size":I
    :cond_1
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 85
    const-wide/16 v0, 0x30

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 86
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 87
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ".precedence = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-byte v1, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->precedence:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ", .sessionType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sessionType:Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ", .sscMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sscMode:Landroid/hardware/radio/V1_6/OptionalSscMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", .sliceInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sliceInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, ", .dnn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v1, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->dnn:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 16
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 174
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget-byte v6, v0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->precedence:B

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 175
    iget-object v4, v0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sessionType:Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;

    const-wide/16 v5, 0x4

    add-long v5, p2, v5

    invoke-virtual {v4, v1, v5, v6}, Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 176
    iget-object v4, v0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sscMode:Landroid/hardware/radio/V1_6/OptionalSscMode;

    const-wide/16 v5, 0xc

    add-long v7, p2, v5

    invoke-virtual {v4, v1, v7, v8}, Landroid/hardware/radio/V1_6/OptionalSscMode;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 178
    iget-object v4, v0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sliceInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 179
    .local v4, "_hidl_vec_size":I
    const-wide/16 v7, 0x10

    add-long v9, p2, v7

    const-wide/16 v11, 0x8

    add-long/2addr v9, v11

    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 180
    add-long v9, p2, v7

    add-long/2addr v9, v5

    const/4 v13, 0x0

    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 181
    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v4, 0x14

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    .line 182
    .local v9, "childBlob":Landroid/os/HwBlob;
    const/4 v10, 0x0

    .local v10, "_hidl_index_0":I
    :goto_0
    if-ge v10, v4, :cond_0

    .line 183
    iget-object v14, v0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sliceInfo:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/radio/V1_6/SliceInfo;

    mul-int/lit8 v15, v10, 0x14

    int-to-long v5, v15

    invoke-virtual {v14, v9, v5, v6}, Landroid/hardware/radio/V1_6/SliceInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 182
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v5, 0xc

    goto :goto_0

    .line 185
    .end local v10    # "_hidl_index_0":I
    :cond_0
    add-long v5, p2, v7

    add-long/2addr v5, v2

    invoke-virtual {v1, v5, v6, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 188
    .end local v4    # "_hidl_vec_size":I
    .end local v9    # "childBlob":Landroid/os/HwBlob;
    iget-object v4, v0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->dnn:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 189
    .restart local v4    # "_hidl_vec_size":I
    const-wide/16 v5, 0x20

    add-long v7, p2, v5

    add-long/2addr v7, v11

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 190
    add-long v7, p2, v5

    const-wide/16 v9, 0xc

    add-long/2addr v7, v9

    invoke-virtual {v1, v7, v8, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 191
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v4, 0x10

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 192
    .local v7, "childBlob":Landroid/os/HwBlob;
    const/4 v8, 0x0

    .local v8, "_hidl_index_0":I
    :goto_1
    if-ge v8, v4, :cond_1

    .line 193
    mul-int/lit8 v9, v8, 0x10

    int-to-long v9, v9

    iget-object v11, v0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->dnn:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 192
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 195
    .end local v8    # "_hidl_index_0":I
    :cond_1
    add-long v5, p2, v5

    add-long/2addr v5, v2

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 197
    .end local v4    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 150
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 151
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 152
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 153
    return-void
.end method
