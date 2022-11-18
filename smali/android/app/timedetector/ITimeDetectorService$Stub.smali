.class public abstract Landroid/app/timedetector/ITimeDetectorService$Stub;
.super Landroid/os/Binder;
.source "ITimeDetectorService.java"

# interfaces
.implements Landroid/app/timedetector/ITimeDetectorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timedetector/ITimeDetectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timedetector/ITimeDetectorService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getCapabilitiesAndConfig:I = 0x1

.field static final blacklist TRANSACTION_suggestExternalTime:I = 0x3

.field static final blacklist TRANSACTION_suggestGnssTime:I = 0x4

.field static final blacklist TRANSACTION_suggestManualTime:I = 0x5

.field static final blacklist TRANSACTION_suggestNetworkTime:I = 0x6

.field static final blacklist TRANSACTION_suggestTelephonyTime:I = 0x7

.field static final blacklist TRANSACTION_updateConfiguration:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "android.app.timedetector.ITimeDetectorService"

    invoke-virtual {p0, p0, v0}, Landroid/app/timedetector/ITimeDetectorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/timedetector/ITimeDetectorService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    const-string v0, "android.app.timedetector.ITimeDetectorService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/timedetector/ITimeDetectorService;

    if-eqz v1, :cond_1

    .line 71
    move-object v1, v0

    check-cast v1, Landroid/app/timedetector/ITimeDetectorService;

    return-object v1

    .line 73
    :cond_1
    new-instance v1, Landroid/app/timedetector/ITimeDetectorService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/timedetector/ITimeDetectorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 82
    packed-switch p0, :pswitch_data_0

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 110
    :pswitch_0
    const-string/jumbo v0, "suggestTelephonyTime"

    return-object v0

    .line 106
    :pswitch_1
    const-string/jumbo v0, "suggestNetworkTime"

    return-object v0

    .line 102
    :pswitch_2
    const-string/jumbo v0, "suggestManualTime"

    return-object v0

    .line 98
    :pswitch_3
    const-string/jumbo v0, "suggestGnssTime"

    return-object v0

    .line 94
    :pswitch_4
    const-string/jumbo v0, "suggestExternalTime"

    return-object v0

    .line 90
    :pswitch_5
    const-string/jumbo v0, "updateConfiguration"

    return-object v0

    .line 86
    :pswitch_6
    const-string v0, "getCapabilitiesAndConfig"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 77
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 348
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 121
    invoke-static {p1}, Landroid/app/timedetector/ITimeDetectorService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    const-string v0, "android.app.timedetector.ITimeDetectorService"

    .line 126
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 127
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 137
    packed-switch p1, :pswitch_data_1

    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 133
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    return v1

    .line 196
    :pswitch_1
    sget-object v2, Landroid/app/timedetector/TelephonyTimeSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/timedetector/TelephonyTimeSuggestion;

    .line 197
    .local v2, "_arg0":Landroid/app/timedetector/TelephonyTimeSuggestion;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2}, Landroid/app/timedetector/ITimeDetectorService$Stub;->suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    goto :goto_0

    .line 187
    .end local v2    # "_arg0":Landroid/app/timedetector/TelephonyTimeSuggestion;
    :pswitch_2
    sget-object v2, Landroid/app/timedetector/NetworkTimeSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/timedetector/NetworkTimeSuggestion;

    .line 188
    .local v2, "_arg0":Landroid/app/timedetector/NetworkTimeSuggestion;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2}, Landroid/app/timedetector/ITimeDetectorService$Stub;->suggestNetworkTime(Landroid/app/timedetector/NetworkTimeSuggestion;)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    goto :goto_0

    .line 177
    .end local v2    # "_arg0":Landroid/app/timedetector/NetworkTimeSuggestion;
    :pswitch_3
    sget-object v2, Landroid/app/timedetector/ManualTimeSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/timedetector/ManualTimeSuggestion;

    .line 178
    .local v2, "_arg0":Landroid/app/timedetector/ManualTimeSuggestion;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2}, Landroid/app/timedetector/ITimeDetectorService$Stub;->suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z

    move-result v3

    .line 180
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 182
    goto :goto_0

    .line 168
    .end local v2    # "_arg0":Landroid/app/timedetector/ManualTimeSuggestion;
    .end local v3    # "_result":Z
    :pswitch_4
    sget-object v2, Landroid/app/timedetector/GnssTimeSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/timedetector/GnssTimeSuggestion;

    .line 169
    .local v2, "_arg0":Landroid/app/timedetector/GnssTimeSuggestion;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v2}, Landroid/app/timedetector/ITimeDetectorService$Stub;->suggestGnssTime(Landroid/app/timedetector/GnssTimeSuggestion;)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    goto :goto_0

    .line 159
    .end local v2    # "_arg0":Landroid/app/timedetector/GnssTimeSuggestion;
    :pswitch_5
    sget-object v2, Landroid/app/time/ExternalTimeSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/time/ExternalTimeSuggestion;

    .line 160
    .local v2, "_arg0":Landroid/app/time/ExternalTimeSuggestion;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, v2}, Landroid/app/timedetector/ITimeDetectorService$Stub;->suggestExternalTime(Landroid/app/time/ExternalTimeSuggestion;)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    goto :goto_0

    .line 149
    .end local v2    # "_arg0":Landroid/app/time/ExternalTimeSuggestion;
    :pswitch_6
    sget-object v2, Landroid/app/time/TimeConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/time/TimeConfiguration;

    .line 150
    .local v2, "_arg0":Landroid/app/time/TimeConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, v2}, Landroid/app/timedetector/ITimeDetectorService$Stub;->updateConfiguration(Landroid/app/time/TimeConfiguration;)Z

    move-result v3

    .line 152
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 154
    goto :goto_0

    .line 141
    .end local v2    # "_arg0":Landroid/app/time/TimeConfiguration;
    .end local v3    # "_result":Z
    :pswitch_7
    invoke-virtual {p0}, Landroid/app/timedetector/ITimeDetectorService$Stub;->getCapabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;

    move-result-object v2

    .line 142
    .local v2, "_result":Landroid/app/time/TimeCapabilitiesAndConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 144
    nop

    .line 207
    .end local v2    # "_result":Landroid/app/time/TimeCapabilitiesAndConfig;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
