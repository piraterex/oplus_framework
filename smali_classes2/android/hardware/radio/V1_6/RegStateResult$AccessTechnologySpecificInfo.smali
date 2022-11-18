.class public final Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;
.super Ljava/lang/Object;
.source "RegStateResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_6/RegStateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccessTechnologySpecificInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo$hidl_discriminator;
    }
.end annotation


# instance fields
.field private blacklist hidl_d:B

.field private blacklist hidl_o:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 7
    new-instance v0, Landroid/internal/hidl/safe_union/V1_0/Monostate;

    invoke-direct {v0}, Landroid/internal/hidl/safe_union/V1_0/Monostate;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

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
            "Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;",
            ">;"
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 221
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 222
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x14

    int-to-long v5, v3

    .line 223
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 222
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 226
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 227
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 228
    new-instance v5, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;-><init>()V

    .line 229
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;
    mul-int/lit8 v6, v4, 0x14

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 230
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 234
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
            "Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;",
            ">;)V"
        }
    .end annotation

    .line 280
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 282
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 283
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 284
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 285
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x14

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 286
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 287
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;

    mul-int/lit8 v5, v3, 0x14

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 286
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 289
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 292
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 293
    return-void
.end method


# virtual methods
.method public blacklist cdmaInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;
    .locals 4

    .line 68
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 69
    iget-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 70
    .local v0, "className":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    .line 73
    invoke-static {v3}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo$hidl_discriminator;->getName(B)Ljava/lang/String;

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

    .line 76
    .end local v0    # "className":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 77
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;

    return-object v0
.end method

.method public blacklist cdmaInfo(Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;)V
    .locals 1
    .param p1, "cdmaInfo"    # Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;

    .line 63
    const/4 v0, 0x1

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    .line 64
    iput-object p1, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 147
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 148
    return v0

    .line 150
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 151
    return v1

    .line 153
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;

    if-eq v2, v3, :cond_2

    .line 154
    return v1

    .line 156
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;

    .line 157
    .local v2, "other":Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;
    iget-byte v3, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    iget-byte v4, v2, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    if-eq v3, v4, :cond_3

    .line 158
    return v1

    .line 160
    :cond_3
    iget-object v3, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 161
    return v1

    .line 163
    :cond_4
    return v0
.end method

.method public blacklist eutranInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;
    .locals 4

    .line 88
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 89
    iget-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 90
    .local v0, "className":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    .line 93
    invoke-static {v3}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo$hidl_discriminator;->getName(B)Ljava/lang/String;

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

    .line 96
    .end local v0    # "className":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 97
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    return-object v0
.end method

.method public blacklist eutranInfo(Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;)V
    .locals 1
    .param p1, "eutranInfo"    # Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    .line 83
    const/4 v0, 0x2

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    .line 84
    iput-object p1, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public blacklist geranDtmSupported(Z)V
    .locals 1
    .param p1, "geranDtmSupported"    # Z

    .line 123
    const/4 v0, 0x4

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    .line 124
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public blacklist geranDtmSupported()Z
    .locals 4

    .line 128
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 129
    iget-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 130
    .local v0, "className":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    .line 133
    invoke-static {v3}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo$hidl_discriminator;->getName(B)Ljava/lang/String;

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

    .line 136
    .end local v0    # "className":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 137
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getDiscriminator()B
    .locals 1

    .line 143
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    .line 168
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 169
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    .line 170
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 168
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist ngranNrVopsInfo()Landroid/hardware/radio/V1_6/NrVopsInfo;
    .locals 4

    .line 108
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 109
    iget-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 110
    .local v0, "className":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    .line 113
    invoke-static {v3}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo$hidl_discriminator;->getName(B)Ljava/lang/String;

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

    .line 116
    .end local v0    # "className":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Landroid/hardware/radio/V1_6/NrVopsInfo;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 117
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_6/NrVopsInfo;

    return-object v0
.end method

.method public blacklist ngranNrVopsInfo(Landroid/hardware/radio/V1_6/NrVopsInfo;)V
    .locals 1
    .param p1, "ngranNrVopsInfo"    # Landroid/hardware/radio/V1_6/NrVopsInfo;

    .line 103
    const/4 v0, 0x3

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    .line 104
    iput-object p1, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public blacklist noinit()Landroid/internal/hidl/safe_union/V1_0/Monostate;
    .locals 4

    .line 48
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 50
    .local v0, "className":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    .line 53
    invoke-static {v3}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo$hidl_discriminator;->getName(B)Ljava/lang/String;

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

    .line 56
    .end local v0    # "className":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Landroid/internal/hidl/safe_union/V1_0/Monostate;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 57
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/internal/hidl/safe_union/V1_0/Monostate;

    return-object v0
.end method

.method public blacklist noinit(Landroid/internal/hidl/safe_union/V1_0/Monostate;)V
    .locals 1
    .param p1, "noinit"    # Landroid/internal/hidl/safe_union/V1_0/Monostate;

    .line 43
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    .line 44
    iput-object p1, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 239
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    .line 240
    const-wide/16 v1, 0x4

    packed-switch v0, :pswitch_data_0

    .line 267
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 263
    add-long/2addr v1, p3

    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 264
    goto :goto_0

    .line 257
    :pswitch_1
    new-instance v0, Landroid/hardware/radio/V1_6/NrVopsInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/NrVopsInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 258
    move-object v3, v0

    check-cast v3, Landroid/hardware/radio/V1_6/NrVopsInfo;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_6/NrVopsInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 259
    goto :goto_0

    .line 252
    :pswitch_2
    new-instance v0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 253
    move-object v3, v0

    check-cast v3, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 254
    goto :goto_0

    .line 247
    :pswitch_3
    new-instance v0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 248
    move-object v3, v0

    check-cast v3, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 249
    goto :goto_0

    .line 242
    :pswitch_4
    new-instance v0, Landroid/internal/hidl/safe_union/V1_0/Monostate;

    invoke-direct {v0}, Landroid/internal/hidl/safe_union/V1_0/Monostate;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 243
    move-object v3, v0

    check-cast v3, Landroid/internal/hidl/safe_union/V1_0/Monostate;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/internal/hidl/safe_union/V1_0/Monostate;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 244
    nop

    .line 270
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 212
    const-wide/16 v0, 0x14

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 213
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 214
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-byte v1, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    packed-switch v1, :pswitch_data_0

    .line 204
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown union discriminator (value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :pswitch_0
    const-string v1, ".geranDtmSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->geranDtmSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 201
    goto :goto_0

    .line 194
    :pswitch_1
    const-string v1, ".ngranNrVopsInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->ngranNrVopsInfo()Landroid/hardware/radio/V1_6/NrVopsInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    goto :goto_0

    .line 189
    :pswitch_2
    const-string v1, ".eutranInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->eutranInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    goto :goto_0

    .line 184
    :pswitch_3
    const-string v1, ".cdmaInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->cdmaInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    goto :goto_0

    .line 179
    :pswitch_4
    const-string v1, ".noinit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->noinit()Landroid/internal/hidl/safe_union/V1_0/Monostate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    nop

    .line 207
    :goto_0
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 297
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 298
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    const-wide/16 v1, 0x4

    packed-switch v0, :pswitch_data_0

    .line 320
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :pswitch_0
    add-long/2addr v1, p2

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->geranDtmSupported()Z

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 317
    goto :goto_0

    .line 312
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->ngranNrVopsInfo()Landroid/hardware/radio/V1_6/NrVopsInfo;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_6/NrVopsInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 313
    goto :goto_0

    .line 308
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->eutranInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 309
    goto :goto_0

    .line 304
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->cdmaInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 305
    goto :goto_0

    .line 300
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->noinit()Landroid/internal/hidl/safe_union/V1_0/Monostate;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/internal/hidl/safe_union/V1_0/Monostate;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 301
    nop

    .line 323
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 273
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 274
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 275
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 276
    return-void
.end method
