.class public abstract Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;
.super Landroid/os/Binder;
.source "IInlineSuggestionsRequestCallback.java"

# interfaces
.implements Lcom/android/internal/view/IInlineSuggestionsRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInlineSuggestionsRequestCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onInlineSuggestionsRequest:I = 0x2

.field static final blacklist TRANSACTION_onInlineSuggestionsSessionInvalidated:I = 0x8

.field static final blacklist TRANSACTION_onInlineSuggestionsUnsupported:I = 0x1

.field static final blacklist TRANSACTION_onInputMethodFinishInput:I = 0x7

.field static final blacklist TRANSACTION_onInputMethodFinishInputView:I = 0x6

.field static final blacklist TRANSACTION_onInputMethodShowInputRequested:I = 0x4

.field static final blacklist TRANSACTION_onInputMethodStartInput:I = 0x3

.field static final blacklist TRANSACTION_onInputMethodStartInputView:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 81
    const-string v0, "com.android.internal.view.IInlineSuggestionsRequestCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInlineSuggestionsRequestCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 89
    if-nez p0, :cond_0

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_0
    const-string v0, "com.android.internal.view.IInlineSuggestionsRequestCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 93
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    if-eqz v1, :cond_1

    .line 94
    move-object v1, v0

    check-cast v1, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    return-object v1

    .line 96
    :cond_1
    new-instance v1, Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 105
    packed-switch p0, :pswitch_data_0

    .line 141
    const/4 v0, 0x0

    return-object v0

    .line 137
    :pswitch_0
    const-string/jumbo v0, "onInlineSuggestionsSessionInvalidated"

    return-object v0

    .line 133
    :pswitch_1
    const-string/jumbo v0, "onInputMethodFinishInput"

    return-object v0

    .line 129
    :pswitch_2
    const-string/jumbo v0, "onInputMethodFinishInputView"

    return-object v0

    .line 125
    :pswitch_3
    const-string/jumbo v0, "onInputMethodStartInputView"

    return-object v0

    .line 121
    :pswitch_4
    const-string/jumbo v0, "onInputMethodShowInputRequested"

    return-object v0

    .line 117
    :pswitch_5
    const-string/jumbo v0, "onInputMethodStartInput"

    return-object v0

    .line 113
    :pswitch_6
    const-string/jumbo v0, "onInlineSuggestionsRequest"

    return-object v0

    .line 109
    :pswitch_7
    const-string/jumbo v0, "onInlineSuggestionsUnsupported"

    return-object v0

    nop

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

    .line 100
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 374
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 148
    invoke-static {p1}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 152
    const-string v0, "com.android.internal.view.IInlineSuggestionsRequestCallback"

    .line 153
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 154
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 164
    packed-switch p1, :pswitch_data_1

    .line 219
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 160
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    return v1

    .line 214
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;->onInlineSuggestionsSessionInvalidated()V

    .line 215
    goto :goto_0

    .line 209
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;->onInputMethodFinishInput()V

    .line 210
    goto :goto_0

    .line 204
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;->onInputMethodFinishInputView()V

    .line 205
    goto :goto_0

    .line 199
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;->onInputMethodStartInputView()V

    .line 200
    goto :goto_0

    .line 192
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 193
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;->onInputMethodShowInputRequested(Z)V

    .line 195
    goto :goto_0

    .line 184
    .end local v2    # "_arg0":Z
    :pswitch_6
    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 185
    .local v2, "_arg0":Landroid/view/autofill/AutofillId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;->onInputMethodStartInput(Landroid/view/autofill/AutofillId;)V

    .line 187
    goto :goto_0

    .line 174
    .end local v2    # "_arg0":Landroid/view/autofill/AutofillId;
    :pswitch_7
    sget-object v2, Landroid/view/inputmethod/InlineSuggestionsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 176
    .local v2, "_arg0":Landroid/view/inputmethod/InlineSuggestionsRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInlineSuggestionsResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInlineSuggestionsResponseCallback;

    move-result-object v3

    .line 177
    .local v3, "_arg1":Lcom/android/internal/view/IInlineSuggestionsResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;->onInlineSuggestionsRequest(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V

    .line 179
    goto :goto_0

    .line 168
    .end local v2    # "_arg0":Landroid/view/inputmethod/InlineSuggestionsRequest;
    .end local v3    # "_arg1":Lcom/android/internal/view/IInlineSuggestionsResponseCallback;
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;->onInlineSuggestionsUnsupported()V

    .line 169
    nop

    .line 222
    :goto_0
    return v1

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
