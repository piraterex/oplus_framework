.class public abstract Lcom/android/ims/internal/IImsUtListener$Stub;
.super Landroid/os/Binder;
.source "IImsUtListener.java"

# interfaces
.implements Lcom/android/ims/internal/IImsUtListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsUtListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsUtListener"

.field static final blacklist TRANSACTION_lineIdentificationSupplementaryServiceResponse:I = 0x5

.field static final greylist-max-o TRANSACTION_onSupplementaryServiceIndication:I = 0x9

.field static final greylist-max-o TRANSACTION_utConfigurationCallBarringQueried:I = 0x6

.field static final greylist-max-o TRANSACTION_utConfigurationCallForwardQueried:I = 0x7

.field static final greylist-max-o TRANSACTION_utConfigurationCallWaitingQueried:I = 0x8

.field static final greylist-max-o TRANSACTION_utConfigurationQueried:I = 0x3

.field static final greylist-max-o TRANSACTION_utConfigurationQueryFailed:I = 0x4

.field static final greylist-max-o TRANSACTION_utConfigurationUpdateFailed:I = 0x2

.field static final greylist-max-o TRANSACTION_utConfigurationUpdated:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    const-string v0, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsUtListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUtListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 67
    if-nez p0, :cond_0

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_0
    const-string v0, "com.android.ims.internal.IImsUtListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsUtListener;

    if-eqz v1, :cond_1

    .line 72
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsUtListener;

    return-object v1

    .line 74
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 83
    packed-switch p0, :pswitch_data_0

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 119
    :pswitch_0
    const-string/jumbo v0, "onSupplementaryServiceIndication"

    return-object v0

    .line 115
    :pswitch_1
    const-string/jumbo v0, "utConfigurationCallWaitingQueried"

    return-object v0

    .line 111
    :pswitch_2
    const-string/jumbo v0, "utConfigurationCallForwardQueried"

    return-object v0

    .line 107
    :pswitch_3
    const-string/jumbo v0, "utConfigurationCallBarringQueried"

    return-object v0

    .line 103
    :pswitch_4
    const-string/jumbo v0, "lineIdentificationSupplementaryServiceResponse"

    return-object v0

    .line 99
    :pswitch_5
    const-string/jumbo v0, "utConfigurationQueryFailed"

    return-object v0

    .line 95
    :pswitch_6
    const-string/jumbo v0, "utConfigurationQueried"

    return-object v0

    .line 91
    :pswitch_7
    const-string/jumbo v0, "utConfigurationUpdateFailed"

    return-object v0

    .line 87
    :pswitch_8
    const-string/jumbo v0, "utConfigurationUpdated"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 78
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 416
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 130
    invoke-static {p1}, Lcom/android/ims/internal/IImsUtListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const-string v0, "com.android.ims.internal.IImsUtListener"

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

    .line 250
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 142
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v1

    .line 243
    :pswitch_1
    sget-object v2, Landroid/telephony/ims/ImsSsData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsSsData;

    .line 244
    .local v2, "_arg0":Landroid/telephony/ims/ImsSsData;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsUtListener$Stub;->onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V

    .line 246
    goto/16 :goto_0

    .line 231
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsSsData;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v2

    .line 233
    .local v2, "_arg0":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 235
    .local v3, "_arg1":I
    sget-object v4, Landroid/telephony/ims/ImsSsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/telephony/ims/ImsSsInfo;

    .line 236
    .local v4, "_arg2":[Landroid/telephony/ims/ImsSsInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 238
    goto/16 :goto_0

    .line 219
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsUt;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[Landroid/telephony/ims/ImsSsInfo;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v2

    .line 221
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 223
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/telephony/ims/ImsCallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 224
    .local v4, "_arg2":[Landroid/telephony/ims/ImsCallForwardInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 226
    goto/16 :goto_0

    .line 207
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsUt;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[Landroid/telephony/ims/ImsCallForwardInfo;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v2

    .line 209
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 211
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/telephony/ims/ImsSsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/telephony/ims/ImsSsInfo;

    .line 212
    .local v4, "_arg2":[Landroid/telephony/ims/ImsSsInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 214
    goto/16 :goto_0

    .line 197
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsUt;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[Landroid/telephony/ims/ImsSsInfo;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 199
    .local v2, "_arg0":I
    sget-object v3, Landroid/telephony/ims/ImsSsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsSsInfo;

    .line 200
    .local v3, "_arg1":Landroid/telephony/ims/ImsSsInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsUtListener$Stub;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    .line 202
    goto :goto_0

    .line 185
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsSsInfo;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v2

    .line 187
    .local v2, "_arg0":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 189
    .local v3, "_arg1":I
    sget-object v4, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/ImsReasonInfo;

    .line 190
    .local v4, "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 192
    goto :goto_0

    .line 173
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsUt;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v2

    .line 175
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 177
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 178
    .local v4, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    .line 180
    goto :goto_0

    .line 161
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsUt;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v2

    .line 163
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 165
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/ImsReasonInfo;

    .line 166
    .local v4, "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 168
    goto :goto_0

    .line 151
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsUt;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v2

    .line 153
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 154
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    .line 156
    nop

    .line 253
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsUt;
    .end local v3    # "_arg1":I
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
