.class public abstract Landroid/app/prediction/IPredictionManager$Stub;
.super Landroid/os/Binder;
.source "IPredictionManager.java"

# interfaces
.implements Landroid/app/prediction/IPredictionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/prediction/IPredictionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/prediction/IPredictionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createPredictionSession:I = 0x1

.field static final blacklist TRANSACTION_notifyAppTargetEvent:I = 0x2

.field static final blacklist TRANSACTION_notifyLaunchLocationShown:I = 0x3

.field static final blacklist TRANSACTION_onDestroyPredictionSession:I = 0x8

.field static final blacklist TRANSACTION_registerPredictionUpdates:I = 0x5

.field static final blacklist TRANSACTION_requestPredictionUpdate:I = 0x7

.field static final blacklist TRANSACTION_sortAppTargets:I = 0x4

.field static final blacklist TRANSACTION_unregisterPredictionUpdates:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.app.prediction.IPredictionManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/prediction/IPredictionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/prediction/IPredictionManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_0
    const-string v0, "android.app.prediction.IPredictionManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/prediction/IPredictionManager;

    if-eqz v1, :cond_1

    .line 59
    move-object v1, v0

    check-cast v1, Landroid/app/prediction/IPredictionManager;

    return-object v1

    .line 61
    :cond_1
    new-instance v1, Landroid/app/prediction/IPredictionManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/prediction/IPredictionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 70
    packed-switch p0, :pswitch_data_0

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 102
    :pswitch_0
    const-string/jumbo v0, "onDestroyPredictionSession"

    return-object v0

    .line 98
    :pswitch_1
    const-string/jumbo v0, "requestPredictionUpdate"

    return-object v0

    .line 94
    :pswitch_2
    const-string/jumbo v0, "unregisterPredictionUpdates"

    return-object v0

    .line 90
    :pswitch_3
    const-string/jumbo v0, "registerPredictionUpdates"

    return-object v0

    .line 86
    :pswitch_4
    const-string/jumbo v0, "sortAppTargets"

    return-object v0

    .line 82
    :pswitch_5
    const-string/jumbo v0, "notifyLaunchLocationShown"

    return-object v0

    .line 78
    :pswitch_6
    const-string/jumbo v0, "notifyAppTargetEvent"

    return-object v0

    .line 74
    :pswitch_7
    const-string v0, "createPredictionSession"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 384
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 113
    invoke-static {p1}, Landroid/app/prediction/IPredictionManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 117
    const-string v0, "android.app.prediction.IPredictionManager"

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

    .line 223
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 125
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return v1

    .line 215
    :pswitch_1
    sget-object v2, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppPredictionSessionId;

    .line 216
    .local v2, "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2}, Landroid/app/prediction/IPredictionManager$Stub;->onDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    goto/16 :goto_0

    .line 206
    .end local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    :pswitch_2
    sget-object v2, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppPredictionSessionId;

    .line 207
    .restart local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, v2}, Landroid/app/prediction/IPredictionManager$Stub;->requestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    goto/16 :goto_0

    .line 195
    .end local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    :pswitch_3
    sget-object v2, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppPredictionSessionId;

    .line 197
    .restart local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/prediction/IPredictionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/prediction/IPredictionCallback;

    move-result-object v3

    .line 198
    .local v3, "_arg1":Landroid/app/prediction/IPredictionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2, v3}, Landroid/app/prediction/IPredictionManager$Stub;->unregisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    goto/16 :goto_0

    .line 184
    .end local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    .end local v3    # "_arg1":Landroid/app/prediction/IPredictionCallback;
    :pswitch_4
    sget-object v2, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppPredictionSessionId;

    .line 186
    .restart local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/prediction/IPredictionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/prediction/IPredictionCallback;

    move-result-object v3

    .line 187
    .restart local v3    # "_arg1":Landroid/app/prediction/IPredictionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, v2, v3}, Landroid/app/prediction/IPredictionManager$Stub;->registerPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    goto/16 :goto_0

    .line 171
    .end local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    .end local v3    # "_arg1":Landroid/app/prediction/IPredictionCallback;
    :pswitch_5
    sget-object v2, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppPredictionSessionId;

    .line 173
    .restart local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;

    .line 175
    .local v3, "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/prediction/IPredictionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/prediction/IPredictionCallback;

    move-result-object v4

    .line 176
    .local v4, "_arg2":Landroid/app/prediction/IPredictionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/prediction/IPredictionManager$Stub;->sortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    goto :goto_0

    .line 158
    .end local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    .end local v3    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .end local v4    # "_arg2":Landroid/app/prediction/IPredictionCallback;
    :pswitch_6
    sget-object v2, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppPredictionSessionId;

    .line 160
    .restart local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ParceledListSlice;

    .line 163
    .local v4, "_arg2":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/prediction/IPredictionManager$Stub;->notifyLaunchLocationShown(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    goto :goto_0

    .line 147
    .end local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/content/pm/ParceledListSlice;
    :pswitch_7
    sget-object v2, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppPredictionSessionId;

    .line 149
    .restart local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    sget-object v3, Landroid/app/prediction/AppTargetEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/prediction/AppTargetEvent;

    .line 150
    .local v3, "_arg1":Landroid/app/prediction/AppTargetEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, v2, v3}, Landroid/app/prediction/IPredictionManager$Stub;->notifyAppTargetEvent(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    goto :goto_0

    .line 134
    .end local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    .end local v3    # "_arg1":Landroid/app/prediction/AppTargetEvent;
    :pswitch_8
    sget-object v2, Landroid/app/prediction/AppPredictionContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppPredictionContext;

    .line 136
    .local v2, "_arg0":Landroid/app/prediction/AppPredictionContext;
    sget-object v3, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/prediction/AppPredictionSessionId;

    .line 138
    .local v3, "_arg1":Landroid/app/prediction/AppPredictionSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 139
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/prediction/IPredictionManager$Stub;->createPredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IBinder;)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    nop

    .line 226
    .end local v2    # "_arg0":Landroid/app/prediction/AppPredictionContext;
    .end local v3    # "_arg1":Landroid/app/prediction/AppPredictionSessionId;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
