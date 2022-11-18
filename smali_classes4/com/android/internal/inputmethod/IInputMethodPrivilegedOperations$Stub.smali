.class public abstract Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;
.super Landroid/os/Binder;
.source "IInputMethodPrivilegedOperations.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_applyImeVisibilityAsync:I = 0xe

.field static final blacklist TRANSACTION_createInputContentUriToken:I = 0x3

.field static final blacklist TRANSACTION_hideMySoftInput:I = 0x7

.field static final blacklist TRANSACTION_notifyUserActionAsync:I = 0xd

.field static final blacklist TRANSACTION_onStylusHandwritingReady:I = 0xf

.field static final blacklist TRANSACTION_reportFullscreenModeAsync:I = 0x4

.field static final blacklist TRANSACTION_reportStartInputAsync:I = 0x2

.field static final blacklist TRANSACTION_resetStylusHandwriting:I = 0x10

.field static final blacklist TRANSACTION_setImeWindowStatusAsync:I = 0x1

.field static final blacklist TRANSACTION_setInputMethod:I = 0x5

.field static final blacklist TRANSACTION_setInputMethodAndSubtype:I = 0x6

.field static final blacklist TRANSACTION_shouldOfferSwitchingToNextInputMethod:I = 0xc

.field static final blacklist TRANSACTION_showMySoftInput:I = 0x8

.field static final blacklist TRANSACTION_switchToNextInputMethod:I = 0xb

.field static final blacklist TRANSACTION_switchToPreviousInputMethod:I = 0xa

.field static final blacklist TRANSACTION_updateStatusIconAsync:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    const-string v0, "com.android.internal.inputmethod.IInputMethodPrivilegedOperations"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 81
    if-nez p0, :cond_0

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_0
    const-string v0, "com.android.internal.inputmethod.IInputMethodPrivilegedOperations"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 85
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    if-eqz v1, :cond_1

    .line 86
    move-object v1, v0

    check-cast v1, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    return-object v1

    .line 88
    :cond_1
    new-instance v1, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 97
    packed-switch p0, :pswitch_data_0

    .line 165
    const/4 v0, 0x0

    return-object v0

    .line 161
    :pswitch_0
    const-string/jumbo v0, "resetStylusHandwriting"

    return-object v0

    .line 157
    :pswitch_1
    const-string/jumbo v0, "onStylusHandwritingReady"

    return-object v0

    .line 153
    :pswitch_2
    const-string v0, "applyImeVisibilityAsync"

    return-object v0

    .line 149
    :pswitch_3
    const-string/jumbo v0, "notifyUserActionAsync"

    return-object v0

    .line 145
    :pswitch_4
    const-string/jumbo v0, "shouldOfferSwitchingToNextInputMethod"

    return-object v0

    .line 141
    :pswitch_5
    const-string/jumbo v0, "switchToNextInputMethod"

    return-object v0

    .line 137
    :pswitch_6
    const-string/jumbo v0, "switchToPreviousInputMethod"

    return-object v0

    .line 133
    :pswitch_7
    const-string/jumbo v0, "updateStatusIconAsync"

    return-object v0

    .line 129
    :pswitch_8
    const-string/jumbo v0, "showMySoftInput"

    return-object v0

    .line 125
    :pswitch_9
    const-string v0, "hideMySoftInput"

    return-object v0

    .line 121
    :pswitch_a
    const-string/jumbo v0, "setInputMethodAndSubtype"

    return-object v0

    .line 117
    :pswitch_b
    const-string/jumbo v0, "setInputMethod"

    return-object v0

    .line 113
    :pswitch_c
    const-string/jumbo v0, "reportFullscreenModeAsync"

    return-object v0

    .line 109
    :pswitch_d
    const-string v0, "createInputContentUriToken"

    return-object v0

    .line 105
    :pswitch_e
    const-string/jumbo v0, "reportStartInputAsync"

    return-object v0

    .line 101
    :pswitch_f
    const-string/jumbo v0, "setImeWindowStatusAsync"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 92
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 584
    const/16 v0, 0xf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 172
    invoke-static {p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 176
    const-string v0, "com.android.internal.inputmethod.IInputMethodPrivilegedOperations"

    .line 177
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 178
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 188
    packed-switch p1, :pswitch_data_1

    .line 341
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 184
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    return v1

    .line 334
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 335
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->resetStylusHandwriting(I)V

    .line 337
    goto/16 :goto_0

    .line 324
    .end local v2    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 326
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 327
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->onStylusHandwritingReady(II)V

    .line 329
    goto/16 :goto_0

    .line 314
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 316
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 317
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->applyImeVisibilityAsync(Landroid/os/IBinder;Z)V

    .line 319
    goto/16 :goto_0

    .line 308
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->notifyUserActionAsync()V

    .line 309
    goto/16 :goto_0

    .line 301
    :pswitch_5
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 302
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->shouldOfferSwitchingToNextInputMethod(Lcom/android/internal/infra/AndroidFuture;)V

    .line 304
    goto/16 :goto_0

    .line 291
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 293
    .local v2, "_arg0":Z
    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    .line 294
    .local v3, "_arg1":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->switchToNextInputMethod(ZLcom/android/internal/infra/AndroidFuture;)V

    .line 296
    goto/16 :goto_0

    .line 283
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_7
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 284
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->switchToPreviousInputMethod(Lcom/android/internal/infra/AndroidFuture;)V

    .line 286
    goto/16 :goto_0

    .line 273
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 276
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->updateStatusIconAsync(Ljava/lang/String;I)V

    .line 278
    goto/16 :goto_0

    .line 263
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 265
    .local v2, "_arg0":I
    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    .line 266
    .local v3, "_arg1":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->showMySoftInput(ILcom/android/internal/infra/AndroidFuture;)V

    .line 268
    goto/16 :goto_0

    .line 253
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 255
    .restart local v2    # "_arg0":I
    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    .line 256
    .restart local v3    # "_arg1":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->hideMySoftInput(ILcom/android/internal/infra/AndroidFuture;)V

    .line 258
    goto :goto_0

    .line 241
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 245
    .local v3, "_arg1":Landroid/view/inputmethod/InputMethodSubtype;
    sget-object v4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/infra/AndroidFuture;

    .line 246
    .local v4, "_arg2":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/internal/infra/AndroidFuture;)V

    .line 248
    goto :goto_0

    .line 231
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v4    # "_arg2":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 233
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    .line 234
    .local v3, "_arg1":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->setInputMethod(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 236
    goto :goto_0

    .line 223
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 224
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->reportFullscreenModeAsync(Z)V

    .line 226
    goto :goto_0

    .line 211
    .end local v2    # "_arg0":Z
    :pswitch_e
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 213
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/infra/AndroidFuture;

    .line 216
    .restart local v4    # "_arg2":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->createInputContentUriToken(Landroid/net/Uri;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 218
    goto :goto_0

    .line 203
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 204
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->reportStartInputAsync(Landroid/os/IBinder;)V

    .line 206
    goto :goto_0

    .line 193
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 195
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 196
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->setImeWindowStatusAsync(II)V

    .line 198
    nop

    .line 344
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
