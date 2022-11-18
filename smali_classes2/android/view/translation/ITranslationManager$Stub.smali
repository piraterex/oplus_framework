.class public abstract Landroid/view/translation/ITranslationManager$Stub;
.super Landroid/os/Binder;
.source "ITranslationManager.java"

# interfaces
.implements Landroid/view/translation/ITranslationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/ITranslationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/ITranslationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getServiceSettingsActivity:I = 0x8

.field static final blacklist TRANSACTION_onSessionCreated:I = 0x4

.field static final blacklist TRANSACTION_onTranslationCapabilitiesRequest:I = 0x1

.field static final blacklist TRANSACTION_onTranslationFinished:I = 0x9

.field static final blacklist TRANSACTION_registerTranslationCapabilityCallback:I = 0x2

.field static final blacklist TRANSACTION_registerUiTranslationStateCallback:I = 0x6

.field static final blacklist TRANSACTION_unregisterTranslationCapabilityCallback:I = 0x3

.field static final blacklist TRANSACTION_unregisterUiTranslationStateCallback:I = 0x7

.field static final blacklist TRANSACTION_updateUiTranslationState:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    const-string v0, "android.view.translation.ITranslationManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/translation/ITranslationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/translation/ITranslationManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 61
    if-nez p0, :cond_0

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_0
    const-string v0, "android.view.translation.ITranslationManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/translation/ITranslationManager;

    if-eqz v1, :cond_1

    .line 66
    move-object v1, v0

    check-cast v1, Landroid/view/translation/ITranslationManager;

    return-object v1

    .line 68
    :cond_1
    new-instance v1, Landroid/view/translation/ITranslationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/translation/ITranslationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 77
    packed-switch p0, :pswitch_data_0

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 113
    :pswitch_0
    const-string v0, "onTranslationFinished"

    return-object v0

    .line 109
    :pswitch_1
    const-string v0, "getServiceSettingsActivity"

    return-object v0

    .line 105
    :pswitch_2
    const-string/jumbo v0, "unregisterUiTranslationStateCallback"

    return-object v0

    .line 101
    :pswitch_3
    const-string v0, "registerUiTranslationStateCallback"

    return-object v0

    .line 97
    :pswitch_4
    const-string/jumbo v0, "updateUiTranslationState"

    return-object v0

    .line 93
    :pswitch_5
    const-string v0, "onSessionCreated"

    return-object v0

    .line 89
    :pswitch_6
    const-string/jumbo v0, "unregisterTranslationCapabilityCallback"

    return-object v0

    .line 85
    :pswitch_7
    const-string v0, "registerTranslationCapabilityCallback"

    return-object v0

    .line 81
    :pswitch_8
    const-string v0, "onTranslationCapabilitiesRequest"

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

    .line 72
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 420
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 124
    invoke-static {p1}, Landroid/view/translation/ITranslationManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    const-string v12, "android.view.translation.ITranslationManager"

    .line 129
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v10, v13, :cond_0

    const v0, 0xffffff

    if-gt v10, v0, :cond_0

    .line 130
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    :cond_0
    packed-switch v10, :pswitch_data_0

    .line 140
    move-object/from16 v14, p3

    packed-switch v10, :pswitch_data_1

    .line 258
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 136
    :pswitch_0
    move-object/from16 v14, p3

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    return v13

    .line 245
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 247
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 249
    .local v1, "_arg1":Landroid/os/IBinder;
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 251
    .local v2, "_arg2":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 252
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/translation/ITranslationManager$Stub;->onTranslationFinished(ZLandroid/os/IBinder;Landroid/content/ComponentName;I)V

    .line 254
    goto/16 :goto_0

    .line 235
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    .end local v3    # "_arg3":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    .line 237
    .local v0, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 238
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {v9, v0, v1}, Landroid/view/translation/ITranslationManager$Stub;->getServiceSettingsActivity(Lcom/android/internal/os/IResultReceiver;I)V

    .line 240
    goto/16 :goto_0

    .line 225
    .end local v0    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    .end local v1    # "_arg1":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    .line 227
    .local v0, "_arg0":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 228
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {v9, v0, v1}, Landroid/view/translation/ITranslationManager$Stub;->unregisterUiTranslationStateCallback(Landroid/os/IRemoteCallback;I)V

    .line 230
    goto/16 :goto_0

    .line 215
    .end local v0    # "_arg0":Landroid/os/IRemoteCallback;
    .end local v1    # "_arg1":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    .line 217
    .restart local v0    # "_arg0":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 218
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {v9, v0, v1}, Landroid/view/translation/ITranslationManager$Stub;->registerUiTranslationStateCallback(Landroid/os/IRemoteCallback;I)V

    .line 220
    goto/16 :goto_0

    .line 193
    .end local v0    # "_arg0":Landroid/os/IRemoteCallback;
    .end local v1    # "_arg1":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 195
    .local v15, "_arg0":I
    sget-object v0, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/translation/TranslationSpec;

    .line 197
    .local v16, "_arg1":Landroid/view/translation/TranslationSpec;
    sget-object v0, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/translation/TranslationSpec;

    .line 199
    .local v17, "_arg2":Landroid/view/translation/TranslationSpec;
    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v18

    .line 201
    .local v18, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    .line 203
    .local v19, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 205
    .local v20, "_arg5":I
    sget-object v0, Landroid/view/translation/UiTranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/view/translation/UiTranslationSpec;

    .line 207
    .local v21, "_arg6":Landroid/view/translation/UiTranslationSpec;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 208
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/view/translation/ITranslationManager$Stub;->updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;I)V

    .line 210
    goto :goto_0

    .line 179
    .end local v15    # "_arg0":I
    .end local v16    # "_arg1":Landroid/view/translation/TranslationSpec;
    .end local v17    # "_arg2":Landroid/view/translation/TranslationSpec;
    .end local v18    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v19    # "_arg4":Landroid/os/IBinder;
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":Landroid/view/translation/UiTranslationSpec;
    .end local v22    # "_arg7":I
    :pswitch_6
    sget-object v0, Landroid/view/translation/TranslationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/translation/TranslationContext;

    .line 181
    .local v0, "_arg0":Landroid/view/translation/TranslationContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 183
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v2

    .line 185
    .local v2, "_arg2":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 186
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/translation/ITranslationManager$Stub;->onSessionCreated(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;I)V

    .line 188
    goto :goto_0

    .line 169
    .end local v0    # "_arg0":Landroid/view/translation/TranslationContext;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/android/internal/os/IResultReceiver;
    .end local v3    # "_arg3":I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    .line 171
    .local v0, "_arg0":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 172
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {v9, v0, v1}, Landroid/view/translation/ITranslationManager$Stub;->unregisterTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V

    .line 174
    goto :goto_0

    .line 159
    .end local v0    # "_arg0":Landroid/os/IRemoteCallback;
    .end local v1    # "_arg1":I
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    .line 161
    .restart local v0    # "_arg0":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 162
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {v9, v0, v1}, Landroid/view/translation/ITranslationManager$Stub;->registerTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V

    .line 164
    goto :goto_0

    .line 145
    .end local v0    # "_arg0":Landroid/os/IRemoteCallback;
    .end local v1    # "_arg1":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 147
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 149
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 151
    .local v2, "_arg2":Landroid/os/ResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 152
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/translation/ITranslationManager$Stub;->onTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;I)V

    .line 154
    nop

    .line 261
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/ResultReceiver;
    .end local v3    # "_arg3":I
    :goto_0
    return v13

    nop

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
