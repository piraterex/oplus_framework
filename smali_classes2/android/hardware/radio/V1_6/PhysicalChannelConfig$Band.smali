.class public final Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;
.super Ljava/lang/Object;
.source "PhysicalChannelConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_6/PhysicalChannelConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Band"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band$hidl_discriminator;
    }
.end annotation


# instance fields
.field private blacklist hidl_d:B

.field private blacklist hidl_o:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    .line 42
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 8
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
            "Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;",
            ">;"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 197
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 198
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x8

    int-to-long v5, v3

    .line 199
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 198
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 202
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 203
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 204
    new-instance v5, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

    invoke-direct {v5}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;-><init>()V

    .line 205
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;
    mul-int/lit8 v6, v4, 0x8

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 206
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 210
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
            "Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;",
            ">;)V"
        }
    .end annotation

    .line 251
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 253
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 254
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 255
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 256
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x8

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 257
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 258
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

    mul-int/lit8 v5, v3, 0x8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 257
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 260
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 263
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 264
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 128
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 129
    return v0

    .line 131
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 132
    return v1

    .line 134
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

    if-eq v2, v3, :cond_2

    .line 135
    return v1

    .line 137
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;

    .line 138
    .local v2, "other":Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;
    iget-byte v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    iget-byte v4, v2, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    if-eq v3, v4, :cond_3

    .line 139
    return v1

    .line 141
    :cond_3
    iget-object v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 142
    return v1

    .line 144
    :cond_4
    return v0
.end method

.method public blacklist eutranBand()I
    .locals 4

    .line 89
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 90
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 91
    .local v0, "className":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    .line 94
    invoke-static {v3}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    .end local v0    # "className":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 98
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist eutranBand(I)V
    .locals 1
    .param p1, "eutranBand"    # I

    .line 84
    const/4 v0, 0x2

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public blacklist geranBand()I
    .locals 4

    .line 49
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 51
    .local v0, "className":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    .line 54
    invoke-static {v3}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    .end local v0    # "className":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 58
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist geranBand(I)V
    .locals 1
    .param p1, "geranBand"    # I

    .line 44
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public blacklist getDiscriminator()B
    .locals 1

    .line 124
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 149
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 150
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    .line 151
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 149
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist ngranBand()I
    .locals 4

    .line 109
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 110
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 111
    .local v0, "className":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    .line 114
    invoke-static {v3}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    .end local v0    # "className":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 118
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist ngranBand(I)V
    .locals 1
    .param p1, "ngranBand"    # I

    .line 104
    const/4 v0, 0x3

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 215
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    .line 216
    const-wide/16 v1, 0x4

    const/4 v3, 0x0

    .line 218
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 216
    packed-switch v0, :pswitch_data_0

    .line 238
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :pswitch_0
    iput-object v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 234
    add-long/2addr v1, p3

    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 235
    goto :goto_0

    .line 228
    :pswitch_1
    iput-object v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 229
    add-long/2addr v1, p3

    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 230
    goto :goto_0

    .line 223
    :pswitch_2
    iput-object v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 224
    add-long/2addr v1, p3

    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 225
    goto :goto_0

    .line 218
    :pswitch_3
    iput-object v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 219
    add-long/2addr v1, p3

    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 220
    nop

    .line 241
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 188
    const-wide/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 189
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 190
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-byte v1, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    packed-switch v1, :pswitch_data_0

    .line 180
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown union discriminator (value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :pswitch_0
    const-string v1, ".ngranBand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->ngranBand()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/radio/V1_6/NgranBands;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    goto :goto_0

    .line 170
    :pswitch_1
    const-string v1, ".eutranBand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->eutranBand()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/radio/V1_1/EutranBands;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    goto :goto_0

    .line 165
    :pswitch_2
    const-string v1, ".utranBand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->utranBand()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/radio/V1_1/UtranBands;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    goto :goto_0

    .line 160
    :pswitch_3
    const-string v1, ".geranBand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->geranBand()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/radio/V1_1/GeranBands;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    nop

    .line 183
    :goto_0
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist utranBand()I
    .locals 4

    .line 69
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 70
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 71
    .local v0, "className":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    .line 74
    invoke-static {v3}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    .end local v0    # "className":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 78
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist utranBand(I)V
    .locals 1
    .param p1, "utranBand"    # I

    .line 64
    const/4 v0, 0x1

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_o:Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 268
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 269
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    const-wide/16 v1, 0x4

    packed-switch v0, :pswitch_data_0

    .line 287
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->hidl_d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :pswitch_0
    add-long/2addr v1, p2

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->ngranBand()I

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 284
    goto :goto_0

    .line 279
    :pswitch_1
    add-long/2addr v1, p2

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->eutranBand()I

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 280
    goto :goto_0

    .line 275
    :pswitch_2
    add-long/2addr v1, p2

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->utranBand()I

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 276
    goto :goto_0

    .line 271
    :pswitch_3
    add-long/2addr v1, p2

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->geranBand()I

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 272
    nop

    .line 290
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 244
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 245
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_6/PhysicalChannelConfig$Band;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 246
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 247
    return-void
.end method
