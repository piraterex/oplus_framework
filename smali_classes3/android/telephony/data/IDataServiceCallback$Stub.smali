.class public abstract Landroid/telephony/data/IDataServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IDataServiceCallback.java"

# interfaces
.implements Landroid/telephony/data/IDataServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/IDataServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/IDataServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.telephony.data.IDataServiceCallback"

.field static final blacklist TRANSACTION_onApnUnthrottled:I = 0x9

.field static final greylist-max-o TRANSACTION_onDataCallListChanged:I = 0x6

.field static final blacklist TRANSACTION_onDataProfileUnthrottled:I = 0xa

.field static final greylist-max-o TRANSACTION_onDeactivateDataCallComplete:I = 0x2

.field static final blacklist TRANSACTION_onHandoverCancelled:I = 0x8

.field static final blacklist TRANSACTION_onHandoverStarted:I = 0x7

.field static final blacklist TRANSACTION_onRequestDataCallListComplete:I = 0x5

.field static final greylist-max-o TRANSACTION_onSetDataProfileComplete:I = 0x4

.field static final greylist-max-o TRANSACTION_onSetInitialAttachApnComplete:I = 0x3

.field static final greylist-max-o TRANSACTION_onSetupDataCallComplete:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    const-string v0, "android.telephony.data.IDataServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/data/IDataServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 63
    if-nez p0, :cond_0

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_0
    const-string v0, "android.telephony.data.IDataServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 67
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/data/IDataServiceCallback;

    if-eqz v1, :cond_1

    .line 68
    move-object v1, v0

    check-cast v1, Landroid/telephony/data/IDataServiceCallback;

    return-object v1

    .line 70
    :cond_1
    new-instance v1, Landroid/telephony/data/IDataServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/data/IDataServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 79
    packed-switch p0, :pswitch_data_0

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 119
    :pswitch_0
    const-string/jumbo v0, "onDataProfileUnthrottled"

    return-object v0

    .line 115
    :pswitch_1
    const-string/jumbo v0, "onApnUnthrottled"

    return-object v0

    .line 111
    :pswitch_2
    const-string/jumbo v0, "onHandoverCancelled"

    return-object v0

    .line 107
    :pswitch_3
    const-string/jumbo v0, "onHandoverStarted"

    return-object v0

    .line 103
    :pswitch_4
    const-string/jumbo v0, "onDataCallListChanged"

    return-object v0

    .line 99
    :pswitch_5
    const-string/jumbo v0, "onRequestDataCallListComplete"

    return-object v0

    .line 95
    :pswitch_6
    const-string/jumbo v0, "onSetDataProfileComplete"

    return-object v0

    .line 91
    :pswitch_7
    const-string/jumbo v0, "onSetInitialAttachApnComplete"

    return-object v0

    .line 87
    :pswitch_8
    const-string/jumbo v0, "onDeactivateDataCallComplete"

    return-object v0

    .line 83
    :pswitch_9
    const-string/jumbo v0, "onSetupDataCallComplete"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
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

    .line 74
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 391
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 130
    invoke-static {p1}, Landroid/telephony/data/IDataServiceCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 134
    const-string v0, "android.telephony.data.IDataServiceCallback"

    .line 135
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 136
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 146
    packed-switch p1, :pswitch_data_1

    .line 234
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 142
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v1

    .line 227
    :pswitch_1
    sget-object v2, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/DataProfile;

    .line 228
    .local v2, "_arg0":Landroid/telephony/data/DataProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->onDataProfileUnthrottled(Landroid/telephony/data/DataProfile;)V

    .line 230
    goto/16 :goto_0

    .line 219
    .end local v2    # "_arg0":Landroid/telephony/data/DataProfile;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->onApnUnthrottled(Ljava/lang/String;)V

    .line 222
    goto :goto_0

    .line 211
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 212
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->onHandoverCancelled(I)V

    .line 214
    goto :goto_0

    .line 203
    .end local v2    # "_arg0":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 204
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->onHandoverStarted(I)V

    .line 206
    goto :goto_0

    .line 195
    .end local v2    # "_arg0":I
    :pswitch_5
    sget-object v2, Landroid/telephony/data/DataCallResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 196
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataCallResponse;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->onDataCallListChanged(Ljava/util/List;)V

    .line 198
    goto :goto_0

    .line 185
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataCallResponse;>;"
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 187
    .local v2, "_arg0":I
    sget-object v3, Landroid/telephony/data/DataCallResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 188
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataCallResponse;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2, v3}, Landroid/telephony/data/IDataServiceCallback$Stub;->onRequestDataCallListComplete(ILjava/util/List;)V

    .line 190
    goto :goto_0

    .line 177
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataCallResponse;>;"
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 178
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->onSetDataProfileComplete(I)V

    .line 180
    goto :goto_0

    .line 169
    .end local v2    # "_arg0":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 170
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->onSetInitialAttachApnComplete(I)V

    .line 172
    goto :goto_0

    .line 161
    .end local v2    # "_arg0":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 162
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->onDeactivateDataCallComplete(I)V

    .line 164
    goto :goto_0

    .line 151
    .end local v2    # "_arg0":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 153
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/telephony/data/DataCallResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/DataCallResponse;

    .line 154
    .local v3, "_arg1":Landroid/telephony/data/DataCallResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v2, v3}, Landroid/telephony/data/IDataServiceCallback$Stub;->onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V

    .line 156
    nop

    .line 237
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/data/DataCallResponse;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
