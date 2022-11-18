.class public Landroid/telephony/UiccSlotInfo;
.super Ljava/lang/Object;
.source "UiccSlotInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/UiccSlotInfo$CardStateInfo;
    }
.end annotation


# static fields
.field public static final whitelist CARD_STATE_INFO_ABSENT:I = 0x1

.field public static final whitelist CARD_STATE_INFO_ERROR:I = 0x3

.field public static final whitelist CARD_STATE_INFO_PRESENT:I = 0x2

.field public static final whitelist CARD_STATE_INFO_RESTRICTED:I = 0x4

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/UiccSlotInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mCardId:Ljava/lang/String;

.field private final greylist-max-o mCardStateInfo:I

.field private final greylist-max-o mIsActive:Z

.field private final greylist-max-o mIsEuicc:Z

.field private final greylist-max-o mIsExtendedApduSupported:Z

.field private final blacklist mIsRemovable:Z

.field private blacklist mLogicalSlotAccessRestricted:Z

.field private final greylist-max-o mLogicalSlotIdx:I

.field private final blacklist mPortList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/UiccPortInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Landroid/telephony/UiccSlotInfo$1;

    invoke-direct {v0}, Landroid/telephony/UiccSlotInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/UiccSlotInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotAccessRestricted:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsRemovable:Z

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    .line 96
    sget-object v1, Landroid/telephony/UiccPortInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotAccessRestricted:Z

    .line 98
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/UiccSlotInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/UiccSlotInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(ZLjava/lang/String;IZZLjava/util/List;)V
    .locals 2
    .param p1, "isEuicc"    # Z
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "cardStateInfo"    # I
    .param p4, "isExtendedApduSupported"    # Z
    .param p5, "isRemovable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "IZZ",
            "Ljava/util/List<",
            "Landroid/telephony/UiccPortInfo;",
            ">;)V"
        }
    .end annotation

    .line 141
    .local p6, "portList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccPortInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotAccessRestricted:Z

    .line 142
    invoke-interface {p6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v1}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result v1

    iput-boolean v1, p0, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    .line 143
    iput-boolean p1, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    .line 144
    iput-object p2, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    .line 145
    iput p3, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    .line 146
    invoke-interface {p6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v0}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    .line 147
    iput-boolean p4, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    .line 148
    iput-boolean p5, p0, Landroid/telephony/UiccSlotInfo;->mIsRemovable:Z

    .line 149
    iput-object p6, p0, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    .line 150
    return-void
.end method

.method public constructor whitelist <init>(ZZLjava/lang/String;IIZ)V
    .locals 1
    .param p1, "isActive"    # Z
    .param p2, "isEuicc"    # Z
    .param p3, "cardId"    # Ljava/lang/String;
    .param p4, "cardStateInfo"    # I
    .param p5, "logicalSlotIdx"    # I
    .param p6, "isExtendedApduSupported"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotAccessRestricted:Z

    .line 125
    iput-boolean p1, p0, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    .line 126
    iput-boolean p2, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    .line 127
    iput-object p3, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    .line 128
    iput p4, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    .line 129
    iput p5, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    .line 130
    iput-boolean p6, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    .line 131
    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsRemovable:Z

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    .line 133
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 253
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 254
    return v0

    .line 256
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 260
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/UiccSlotInfo;

    .line 261
    .local v2, "that":Landroid/telephony/UiccSlotInfo;
    iget-boolean v3, p0, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    iget-boolean v4, v2, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    iget-boolean v4, v2, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    .line 263
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    iget v4, v2, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    iget v4, v2, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    iget-boolean v4, v2, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/telephony/UiccSlotInfo;->mIsRemovable:Z

    iget-boolean v4, v2, Landroid/telephony/UiccSlotInfo;->mIsRemovable:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    .line 268
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 261
    :goto_0
    return v0

    .line 257
    .end local v2    # "that":Landroid/telephony/UiccSlotInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getCardId()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCardStateInfo()I
    .locals 1

    .line 189
    iget v0, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    return v0
.end method

.method public whitelist getIsActive()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotAccessRestricted:Z

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p0}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v0}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result v0

    return v0

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getIsActive() is not supported by UiccSlotInfo. Please Use UiccPortInfo API instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getIsEuicc()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    return v0
.end method

.method public whitelist getIsExtendedApduSupported()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    return v0
.end method

.method public whitelist getLogicalSlotIdx()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotAccessRestricted:Z

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v0}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result v0

    return v0

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getLogicalSlotIdx() is not supported by UiccSlotInfo. Please use UiccPortInfo API instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPorts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/telephony/UiccPortInfo;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 273
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    .line 274
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/UiccSlotInfo;->mIsRemovable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 273
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isRemovable()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsRemovable:Z

    return v0
.end method

.method public blacklist setLogicalSlotAccessRestricted(Z)V
    .locals 0
    .param p1, "logicalSlotAccessRestricted"    # Z

    .line 248
    iput-boolean p1, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotAccessRestricted:Z

    .line 249
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiccSlotInfo (, mIsEuicc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCardId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    .line 284
    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cardState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsExtendedApduSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsRemovable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/UiccSlotInfo;->mIsRemovable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPortList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLogicalSlotAccessRestricted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotAccessRestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 102
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 103
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 104
    iget-object v0, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 105
    iget v0, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 108
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsRemovable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 109
    iget-object v0, p0, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 110
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotAccessRestricted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 111
    return-void
.end method
