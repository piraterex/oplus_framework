.class public final Landroid/telephony/SignalStrengthUpdateRequest;
.super Ljava/lang/Object;
.source "SignalStrengthUpdateRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SignalStrengthUpdateRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SignalStrengthUpdateRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIsReportingRequestedWhileIdle:Z

.field private final blacklist mIsSystemThresholdReportingRequestedWhileIdle:Z

.field private final blacklist mLiveToken:Landroid/os/IBinder;

.field private final blacklist mSignalThresholdInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SignalThresholdInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 247
    new-instance v0, Landroid/telephony/SignalStrengthUpdateRequest$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrengthUpdateRequest$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrengthUpdateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    sget-object v0, Landroid/telephony/SignalThresholdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mSignalThresholdInfos:Ljava/util/List;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mIsReportingRequestedWhileIdle:Z

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mIsSystemThresholdReportingRequestedWhileIdle:Z

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mLiveToken:Landroid/os/IBinder;

    .line 173
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/SignalStrengthUpdateRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrengthUpdateRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;ZZ)V
    .locals 1
    .param p2, "isReportingRequestedWhileIdle"    # Z
    .param p3, "isSystemThresholdReportingRequestedWhileIdle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SignalThresholdInfo;",
            ">;ZZ)V"
        }
    .end annotation

    .line 74
    .local p1, "signalThresholdInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SignalThresholdInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {p1, p3}, Landroid/telephony/SignalStrengthUpdateRequest;->validate(Ljava/util/Collection;Z)V

    .line 77
    iput-object p1, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mSignalThresholdInfos:Ljava/util/List;

    .line 78
    iput-boolean p2, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mIsReportingRequestedWhileIdle:Z

    .line 79
    iput-boolean p3, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mIsSystemThresholdReportingRequestedWhileIdle:Z

    .line 81
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mLiveToken:Landroid/os/IBinder;

    .line 82
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;ZZLandroid/telephony/SignalStrengthUpdateRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/SignalStrengthUpdateRequest;-><init>(Ljava/util/List;ZZ)V

    return-void
.end method

.method private static blacklist validate(Ljava/util/Collection;Z)V
    .locals 7
    .param p1, "isSystemThresholdReportingRequestedWhileIdle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/telephony/SignalThresholdInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 283
    .local p0, "infos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/telephony/SignalThresholdInfo;>;"
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    .line 288
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 289
    .local v0, "ranToTypes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SignalThresholdInfo;

    .line 290
    .local v2, "info":Landroid/telephony/SignalThresholdInfo;
    invoke-virtual {v2}, Landroid/telephony/SignalThresholdInfo;->getRadioAccessNetworkType()I

    move-result v3

    .line 291
    .local v3, "ran":I
    invoke-virtual {v2}, Landroid/telephony/SignalThresholdInfo;->getSignalMeasurementType()I

    move-result v4

    .line 292
    .local v4, "type":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 297
    .end local v2    # "info":Landroid/telephony/SignalThresholdInfo;
    .end local v3    # "ran":I
    .end local v4    # "type":I
    goto :goto_0

    .line 294
    .restart local v2    # "info":Landroid/telephony/SignalThresholdInfo;
    .restart local v3    # "ran":I
    .restart local v4    # "type":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SignalMeasurementType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for RAN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not unique"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    .end local v2    # "info":Landroid/telephony/SignalThresholdInfo;
    .end local v3    # "ran":I
    .end local v4    # "type":I
    :cond_2
    return-void

    .line 284
    .end local v0    # "ranToTypes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SignalThresholdInfo collection is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 228
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 230
    :cond_0
    instance-of v1, p1, Landroid/telephony/SignalStrengthUpdateRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 231
    return v2

    .line 234
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/SignalStrengthUpdateRequest;

    .line 235
    .local v1, "request":Landroid/telephony/SignalStrengthUpdateRequest;
    iget-object v3, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mSignalThresholdInfos:Ljava/util/List;

    iget-object v4, v1, Landroid/telephony/SignalStrengthUpdateRequest;->mSignalThresholdInfos:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mIsReportingRequestedWhileIdle:Z

    iget-boolean v4, v1, Landroid/telephony/SignalStrengthUpdateRequest;->mIsReportingRequestedWhileIdle:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mIsSystemThresholdReportingRequestedWhileIdle:Z

    iget-boolean v4, v1, Landroid/telephony/SignalStrengthUpdateRequest;->mIsSystemThresholdReportingRequestedWhileIdle:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public blacklist getLiveToken()Landroid/os/IBinder;
    .locals 1

    .line 210
    iget-object v0, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mLiveToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getSignalThresholdInfos()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/telephony/SignalThresholdInfo;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mSignalThresholdInfos:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 243
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mSignalThresholdInfos:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mIsReportingRequestedWhileIdle:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mIsSystemThresholdReportingRequestedWhileIdle:Z

    .line 244
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 243
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isReportingRequestedWhileIdle()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mIsReportingRequestedWhileIdle:Z

    return v0
.end method

.method public whitelist isSystemThresholdReportingRequestedWhileIdle()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 201
    iget-boolean v0, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mIsSystemThresholdReportingRequestedWhileIdle:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SignalStrengthUpdateRequest{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    const-string/jumbo v1, "mSignalThresholdInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mSignalThresholdInfos:Ljava/util/List;

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 265
    const-string v1, " mIsReportingRequestedWhileIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mIsReportingRequestedWhileIdle:Z

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 267
    const-string v1, " mIsSystemThresholdReportingRequestedWhileIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mIsSystemThresholdReportingRequestedWhileIdle:Z

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 269
    const-string v1, " mLiveToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mLiveToken:Landroid/os/IBinder;

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 271
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 220
    iget-object v0, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mSignalThresholdInfos:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 221
    iget-boolean v0, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mIsReportingRequestedWhileIdle:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 222
    iget-boolean v0, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mIsSystemThresholdReportingRequestedWhileIdle:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 223
    iget-object v0, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mLiveToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 224
    return-void
.end method
