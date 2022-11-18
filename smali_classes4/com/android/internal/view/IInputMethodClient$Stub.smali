.class public abstract Lcom/android/internal/view/IInputMethodClient$Stub;
.super Landroid/os/Binder;
.source "IInputMethodClient.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethodClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethodClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethodClient$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodClient"

.field static final blacklist TRANSACTION_onBindAccessibilityService:I = 0x2

.field static final greylist-max-o TRANSACTION_onBindMethod:I = 0x1

.field static final blacklist TRANSACTION_onUnbindAccessibilityService:I = 0x4

.field static final greylist-max-o TRANSACTION_onUnbindMethod:I = 0x3

.field static final greylist-max-o TRANSACTION_reportFullscreenMode:I = 0x7

.field static final blacklist TRANSACTION_scheduleStartInputIfNecessary:I = 0x6

.field static final greylist-max-o TRANSACTION_setActive:I = 0x5

.field static final blacklist TRANSACTION_setImeTraceEnabled:I = 0x9

.field static final blacklist TRANSACTION_throwExceptionFromSystem:I = 0xa

.field static final blacklist TRANSACTION_updateVirtualDisplayToScreenMatrix:I = 0x8


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    const-string v0, "com.android.internal.view.IInputMethodClient"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 63
    if-nez p0, :cond_0

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_0
    const-string v0, "com.android.internal.view.IInputMethodClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 67
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_1

    .line 68
    move-object v1, v0

    check-cast v1, Lcom/android/internal/view/IInputMethodClient;

    return-object v1

    .line 70
    :cond_1
    new-instance v1, Lcom/android/internal/view/IInputMethodClient$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethodClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string/jumbo v0, "throwExceptionFromSystem"

    return-object v0

    .line 115
    :pswitch_1
    const-string/jumbo v0, "setImeTraceEnabled"

    return-object v0

    .line 111
    :pswitch_2
    const-string/jumbo v0, "updateVirtualDisplayToScreenMatrix"

    return-object v0

    .line 107
    :pswitch_3
    const-string/jumbo v0, "reportFullscreenMode"

    return-object v0

    .line 103
    :pswitch_4
    const-string/jumbo v0, "scheduleStartInputIfNecessary"

    return-object v0

    .line 99
    :pswitch_5
    const-string/jumbo v0, "setActive"

    return-object v0

    .line 95
    :pswitch_6
    const-string/jumbo v0, "onUnbindAccessibilityService"

    return-object v0

    .line 91
    :pswitch_7
    const-string/jumbo v0, "onUnbindMethod"

    return-object v0

    .line 87
    :pswitch_8
    const-string/jumbo v0, "onBindAccessibilityService"

    return-object v0

    .line 83
    :pswitch_9
    const-string/jumbo v0, "onBindMethod"

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

    .line 403
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 130
    invoke-static {p1}, Lcom/android/internal/view/IInputMethodClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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
    const-string v0, "com.android.internal.view.IInputMethodClient"

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

    .line 242
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 142
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v1

    .line 235
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v2}, Lcom/android/internal/view/IInputMethodClient$Stub;->throwExceptionFromSystem(Ljava/lang/String;)V

    .line 238
    goto/16 :goto_0

    .line 227
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 228
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2}, Lcom/android/internal/view/IInputMethodClient$Stub;->setImeTraceEnabled(Z)V

    .line 230
    goto/16 :goto_0

    .line 217
    .end local v2    # "_arg0":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 219
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3

    .line 220
    .local v3, "_arg1":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/view/IInputMethodClient$Stub;->updateVirtualDisplayToScreenMatrix(I[F)V

    .line 222
    goto :goto_0

    .line 209
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[F
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 210
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v2}, Lcom/android/internal/view/IInputMethodClient$Stub;->reportFullscreenMode(Z)V

    .line 212
    goto :goto_0

    .line 201
    .end local v2    # "_arg0":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 202
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v2}, Lcom/android/internal/view/IInputMethodClient$Stub;->scheduleStartInputIfNecessary(Z)V

    .line 204
    goto :goto_0

    .line 189
    .end local v2    # "_arg0":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 191
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 193
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 194
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->setActive(ZZZ)V

    .line 196
    goto :goto_0

    .line 179
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Z
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 181
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 182
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/view/IInputMethodClient$Stub;->onUnbindAccessibilityService(II)V

    .line 184
    goto :goto_0

    .line 169
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 171
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 172
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/view/IInputMethodClient$Stub;->onUnbindMethod(II)V

    .line 174
    goto :goto_0

    .line 159
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_9
    sget-object v2, Lcom/android/internal/inputmethod/InputBindResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/inputmethod/InputBindResult;

    .line 161
    .local v2, "_arg0":Lcom/android/internal/inputmethod/InputBindResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 162
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/view/IInputMethodClient$Stub;->onBindAccessibilityService(Lcom/android/internal/inputmethod/InputBindResult;I)V

    .line 164
    goto :goto_0

    .line 151
    .end local v2    # "_arg0":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v3    # "_arg1":I
    :pswitch_a
    sget-object v2, Lcom/android/internal/inputmethod/InputBindResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/inputmethod/InputBindResult;

    .line 152
    .restart local v2    # "_arg0":Lcom/android/internal/inputmethod/InputBindResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v2}, Lcom/android/internal/view/IInputMethodClient$Stub;->onBindMethod(Lcom/android/internal/inputmethod/InputBindResult;)V

    .line 154
    nop

    .line 245
    .end local v2    # "_arg0":Lcom/android/internal/inputmethod/InputBindResult;
    :goto_0
    return v1

    nop

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
