.class public abstract Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;
.super Landroid/os/Binder;
.source "ITimeZoneDetectorService.java"

# interfaces
.implements Landroid/app/timezonedetector/ITimeZoneDetectorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timezonedetector/ITimeZoneDetectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addListener:I = 0x2

.field static final blacklist TRANSACTION_getCapabilitiesAndConfig:I = 0x1

.field static final blacklist TRANSACTION_removeListener:I = 0x3

.field static final blacklist TRANSACTION_suggestManualTimeZone:I = 0x5

.field static final blacklist TRANSACTION_suggestTelephonyTimeZone:I = 0x6

.field static final blacklist TRANSACTION_updateConfiguration:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "android.app.timezonedetector.ITimeZoneDetectorService"

    invoke-virtual {p0, p0, v0}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/timezonedetector/ITimeZoneDetectorService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_0

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_0
    const-string v0, "android.app.timezonedetector.ITimeZoneDetectorService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/timezonedetector/ITimeZoneDetectorService;

    if-eqz v1, :cond_1

    .line 67
    move-object v1, v0

    check-cast v1, Landroid/app/timezonedetector/ITimeZoneDetectorService;

    return-object v1

    .line 69
    :cond_1
    new-instance v1, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 78
    packed-switch p0, :pswitch_data_0

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 102
    :pswitch_0
    const-string/jumbo v0, "suggestTelephonyTimeZone"

    return-object v0

    .line 98
    :pswitch_1
    const-string/jumbo v0, "suggestManualTimeZone"

    return-object v0

    .line 94
    :pswitch_2
    const-string/jumbo v0, "updateConfiguration"

    return-object v0

    .line 90
    :pswitch_3
    const-string/jumbo v0, "removeListener"

    return-object v0

    .line 86
    :pswitch_4
    const-string v0, "addListener"

    return-object v0

    .line 82
    :pswitch_5
    const-string v0, "getCapabilitiesAndConfig"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 73
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 315
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 113
    invoke-static {p1}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 117
    const-string v0, "android.app.timezonedetector.ITimeZoneDetectorService"

    .line 118
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 119
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 129
    packed-switch p1, :pswitch_data_1

    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 125
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return v1

    .line 179
    :pswitch_1
    sget-object v2, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    .line 180
    .local v2, "_arg0":Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, v2}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->suggestTelephonyTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    goto :goto_0

    .line 169
    .end local v2    # "_arg0":Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    :pswitch_2
    sget-object v2, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    .line 170
    .local v2, "_arg0":Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->suggestManualTimeZone(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z

    move-result v3

    .line 172
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 174
    goto :goto_0

    .line 159
    .end local v2    # "_arg0":Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    .end local v3    # "_result":Z
    :pswitch_3
    sget-object v2, Landroid/app/time/TimeZoneConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/time/TimeZoneConfiguration;

    .line 160
    .local v2, "_arg0":Landroid/app/time/TimeZoneConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, v2}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->updateConfiguration(Landroid/app/time/TimeZoneConfiguration;)Z

    move-result v3

    .line 162
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 164
    goto :goto_0

    .line 150
    .end local v2    # "_arg0":Landroid/app/time/TimeZoneConfiguration;
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/time/ITimeZoneDetectorListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/time/ITimeZoneDetectorListener;

    move-result-object v2

    .line 151
    .local v2, "_arg0":Landroid/app/time/ITimeZoneDetectorListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->removeListener(Landroid/app/time/ITimeZoneDetectorListener;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    goto :goto_0

    .line 141
    .end local v2    # "_arg0":Landroid/app/time/ITimeZoneDetectorListener;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/time/ITimeZoneDetectorListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/time/ITimeZoneDetectorListener;

    move-result-object v2

    .line 142
    .restart local v2    # "_arg0":Landroid/app/time/ITimeZoneDetectorListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v2}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->addListener(Landroid/app/time/ITimeZoneDetectorListener;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    goto :goto_0

    .line 133
    .end local v2    # "_arg0":Landroid/app/time/ITimeZoneDetectorListener;
    :pswitch_6
    invoke-virtual {p0}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->getCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object v2

    .line 134
    .local v2, "_result":Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 136
    nop

    .line 190
    .end local v2    # "_result":Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
