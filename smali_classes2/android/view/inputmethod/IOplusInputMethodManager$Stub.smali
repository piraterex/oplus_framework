.class public abstract Landroid/view/inputmethod/IOplusInputMethodManager$Stub;
.super Landroid/os/Binder;
.source "IOplusInputMethodManager.java"

# interfaces
.implements Landroid/view/inputmethod/IOplusInputMethodManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/IOplusInputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/IOplusInputMethodManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearDefaultInputMethodByCustomize:I = 0x5

.field static final blacklist TRANSACTION_commitTextByOtherSide:I = 0xa

.field static final blacklist TRANSACTION_getDefaultInputMethodByCustomize:I = 0x4

.field static final blacklist TRANSACTION_getInputMethodWindowVisibleHeight:I = 0xb

.field static final blacklist TRANSACTION_hideCurrentInputMethod:I = 0x1

.field static final blacklist TRANSACTION_hideSoftInput:I = 0x2

.field static final blacklist TRANSACTION_invalidateInputToSynergy:I = 0x8

.field static final blacklist TRANSACTION_registerInputMethodSynergyService:I = 0x9

.field static final blacklist TRANSACTION_setAlwaysLogOff:I = 0xd

.field static final blacklist TRANSACTION_setAlwaysLogOn:I = 0xc

.field static final blacklist TRANSACTION_setDefaultInputMethodByCustomize:I = 0x3

.field static final blacklist TRANSACTION_updateCursorAnchorInfoToSynergy:I = 0x7

.field static final blacklist TRANSACTION_updateTouchDeviceId:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const-string v0, "android.view.inputmethod.IOplusInputMethodManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/inputmethod/IOplusInputMethodManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/inputmethod/IOplusInputMethodManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 73
    if-nez p0, :cond_0

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_0
    const-string v0, "android.view.inputmethod.IOplusInputMethodManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/inputmethod/IOplusInputMethodManager;

    if-eqz v1, :cond_1

    .line 78
    move-object v1, v0

    check-cast v1, Landroid/view/inputmethod/IOplusInputMethodManager;

    return-object v1

    .line 80
    :cond_1
    new-instance v1, Landroid/view/inputmethod/IOplusInputMethodManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/inputmethod/IOplusInputMethodManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 89
    packed-switch p0, :pswitch_data_0

    .line 145
    const/4 v0, 0x0

    return-object v0

    .line 141
    :pswitch_0
    const-string v0, "setAlwaysLogOff"

    return-object v0

    .line 137
    :pswitch_1
    const-string v0, "setAlwaysLogOn"

    return-object v0

    .line 133
    :pswitch_2
    const-string v0, "getInputMethodWindowVisibleHeight"

    return-object v0

    .line 129
    :pswitch_3
    const-string v0, "commitTextByOtherSide"

    return-object v0

    .line 125
    :pswitch_4
    const-string v0, "registerInputMethodSynergyService"

    return-object v0

    .line 121
    :pswitch_5
    const-string v0, "invalidateInputToSynergy"

    return-object v0

    .line 117
    :pswitch_6
    const-string/jumbo v0, "updateCursorAnchorInfoToSynergy"

    return-object v0

    .line 113
    :pswitch_7
    const-string/jumbo v0, "updateTouchDeviceId"

    return-object v0

    .line 109
    :pswitch_8
    const-string v0, "clearDefaultInputMethodByCustomize"

    return-object v0

    .line 105
    :pswitch_9
    const-string v0, "getDefaultInputMethodByCustomize"

    return-object v0

    .line 101
    :pswitch_a
    const-string v0, "setDefaultInputMethodByCustomize"

    return-object v0

    .line 97
    :pswitch_b
    const-string v0, "hideSoftInput"

    return-object v0

    .line 93
    :pswitch_c
    const-string v0, "hideCurrentInputMethod"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 84
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 489
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 152
    invoke-static {p1}, Landroid/view/inputmethod/IOplusInputMethodManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 156
    const-string v0, "android.view.inputmethod.IOplusInputMethodManager"

    .line 157
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 158
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 168
    packed-switch p1, :pswitch_data_1

    .line 274
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 164
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    return v1

    .line 269
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/inputmethod/IOplusInputMethodManager$Stub;->setAlwaysLogOff()V

    .line 270
    goto/16 :goto_0

    .line 260
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 262
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/inputmethod/IOplusInputMethodManager$Stub;->setAlwaysLogOn(JLjava/lang/String;)V

    .line 265
    goto/16 :goto_0

    .line 250
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 251
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/IOplusInputMethodManager$Stub;->getInputMethodWindowVisibleHeight(I)I

    move-result v3

    .line 253
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    goto/16 :goto_0

    .line 244
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_4
    invoke-virtual {p0}, Landroid/view/inputmethod/IOplusInputMethodManager$Stub;->commitTextByOtherSide()V

    .line 245
    goto/16 :goto_0

    .line 235
    :pswitch_5
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 237
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 238
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, v2, v3}, Landroid/view/inputmethod/IOplusInputMethodManager$Stub;->registerInputMethodSynergyService(Landroid/content/ComponentName;Z)V

    .line 240
    goto :goto_0

    .line 223
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_6
    sget-object v2, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/EditorInfo;

    .line 225
    .local v2, "_arg0":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v3

    .line 227
    .local v3, "_arg1":Lcom/android/internal/view/IInputContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 228
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/inputmethod/IOplusInputMethodManager$Stub;->invalidateInputToSynergy(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)V

    .line 230
    goto :goto_0

    .line 215
    .end local v2    # "_arg0":Landroid/view/inputmethod/EditorInfo;
    .end local v3    # "_arg1":Lcom/android/internal/view/IInputContext;
    .end local v4    # "_arg2":I
    :pswitch_7
    sget-object v2, Landroid/view/inputmethod/CursorAnchorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/CursorAnchorInfo;

    .line 216
    .local v2, "_arg0":Landroid/view/inputmethod/CursorAnchorInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/IOplusInputMethodManager$Stub;->updateCursorAnchorInfoToSynergy(Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 218
    goto :goto_0

    .line 207
    .end local v2    # "_arg0":Landroid/view/inputmethod/CursorAnchorInfo;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 208
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/IOplusInputMethodManager$Stub;->updateTouchDeviceId(I)V

    .line 210
    goto :goto_0

    .line 199
    .end local v2    # "_arg0":I
    :pswitch_9
    invoke-virtual {p0}, Landroid/view/inputmethod/IOplusInputMethodManager$Stub;->clearDefaultInputMethodByCustomize()Z

    move-result v2

    .line 200
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 202
    goto :goto_0

    .line 192
    .end local v2    # "_result":Z
    :pswitch_a
    invoke-virtual {p0}, Landroid/view/inputmethod/IOplusInputMethodManager$Stub;->getDefaultInputMethodByCustomize()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    goto :goto_0

    .line 183
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/IOplusInputMethodManager$Stub;->setDefaultInputMethodByCustomize(Ljava/lang/String;)Z

    move-result v3

    .line 186
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 188
    goto :goto_0

    .line 177
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_c
    invoke-virtual {p0}, Landroid/view/inputmethod/IOplusInputMethodManager$Stub;->hideSoftInput()V

    .line 178
    goto :goto_0

    .line 172
    :pswitch_d
    invoke-virtual {p0}, Landroid/view/inputmethod/IOplusInputMethodManager$Stub;->hideCurrentInputMethod()V

    .line 173
    nop

    .line 277
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
