.class public abstract Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;
.super Landroid/os/Binder;
.source "IContentSuggestionsManager.java"

# interfaces
.implements Landroid/app/contentsuggestions/IContentSuggestionsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/contentsuggestions/IContentSuggestionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_classifyContentSelections:I = 0x4

.field static final blacklist TRANSACTION_isEnabled:I = 0x6

.field static final blacklist TRANSACTION_notifyInteraction:I = 0x5

.field static final blacklist TRANSACTION_provideContextBitmap:I = 0x2

.field static final blacklist TRANSACTION_provideContextImage:I = 0x1

.field static final blacklist TRANSACTION_resetTemporaryService:I = 0x7

.field static final blacklist TRANSACTION_setDefaultServiceEnabled:I = 0x9

.field static final blacklist TRANSACTION_setTemporaryService:I = 0x8

.field static final blacklist TRANSACTION_suggestContentSelections:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.app.contentsuggestions.IContentSuggestionsManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/contentsuggestions/IContentSuggestionsManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_0
    const-string v0, "android.app.contentsuggestions.IContentSuggestionsManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/contentsuggestions/IContentSuggestionsManager;

    if-eqz v1, :cond_1

    .line 62
    move-object v1, v0

    check-cast v1, Landroid/app/contentsuggestions/IContentSuggestionsManager;

    return-object v1

    .line 64
    :cond_1
    new-instance v1, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 73
    packed-switch p0, :pswitch_data_0

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 109
    :pswitch_0
    const-string/jumbo v0, "setDefaultServiceEnabled"

    return-object v0

    .line 105
    :pswitch_1
    const-string/jumbo v0, "setTemporaryService"

    return-object v0

    .line 101
    :pswitch_2
    const-string/jumbo v0, "resetTemporaryService"

    return-object v0

    .line 97
    :pswitch_3
    const-string v0, "isEnabled"

    return-object v0

    .line 93
    :pswitch_4
    const-string/jumbo v0, "notifyInteraction"

    return-object v0

    .line 89
    :pswitch_5
    const-string v0, "classifyContentSelections"

    return-object v0

    .line 85
    :pswitch_6
    const-string/jumbo v0, "suggestContentSelections"

    return-object v0

    .line 81
    :pswitch_7
    const-string/jumbo v0, "provideContextBitmap"

    return-object v0

    .line 77
    :pswitch_8
    const-string/jumbo v0, "provideContextImage"

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

    .line 68
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 395
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 120
    invoke-static {p1}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 124
    const-string v0, "android.app.contentsuggestions.IContentSuggestionsManager"

    .line 125
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 126
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 136
    packed-switch p1, :pswitch_data_1

    .line 240
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 132
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    return v1

    .line 231
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 233
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 234
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2, v3}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->setDefaultServiceEnabled(IZ)V

    .line 236
    goto/16 :goto_0

    .line 219
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 221
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 224
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->setTemporaryService(ILjava/lang/String;I)V

    .line 226
    goto/16 :goto_0

    .line 211
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 212
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->resetTemporaryService(I)V

    .line 214
    goto/16 :goto_0

    .line 201
    .end local v2    # "_arg0":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 203
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v3

    .line 204
    .local v3, "_arg1":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, v2, v3}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->isEnabled(ILcom/android/internal/os/IResultReceiver;)V

    .line 206
    goto/16 :goto_0

    .line 189
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 191
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 194
    .local v4, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->notifyInteraction(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 196
    goto :goto_0

    .line 177
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 179
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/app/contentsuggestions/ClassificationsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/contentsuggestions/ClassificationsRequest;

    .line 181
    .local v3, "_arg1":Landroid/app/contentsuggestions/ClassificationsRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/contentsuggestions/IClassificationsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/contentsuggestions/IClassificationsCallback;

    move-result-object v4

    .line 182
    .local v4, "_arg2":Landroid/app/contentsuggestions/IClassificationsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->classifyContentSelections(ILandroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V

    .line 184
    goto :goto_0

    .line 165
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/app/contentsuggestions/ClassificationsRequest;
    .end local v4    # "_arg2":Landroid/app/contentsuggestions/IClassificationsCallback;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 167
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/app/contentsuggestions/SelectionsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/contentsuggestions/SelectionsRequest;

    .line 169
    .local v3, "_arg1":Landroid/app/contentsuggestions/SelectionsRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/contentsuggestions/ISelectionsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/contentsuggestions/ISelectionsCallback;

    move-result-object v4

    .line 170
    .local v4, "_arg2":Landroid/app/contentsuggestions/ISelectionsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->suggestContentSelections(ILandroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V

    .line 172
    goto :goto_0

    .line 153
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/app/contentsuggestions/SelectionsRequest;
    .end local v4    # "_arg2":Landroid/app/contentsuggestions/ISelectionsCallback;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 155
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 157
    .local v3, "_arg1":Landroid/graphics/Bitmap;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 158
    .local v4, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->provideContextBitmap(ILandroid/graphics/Bitmap;Landroid/os/Bundle;)V

    .line 160
    goto :goto_0

    .line 141
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/graphics/Bitmap;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 143
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 145
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 146
    .restart local v4    # "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->provideContextImage(IILandroid/os/Bundle;)V

    .line 148
    nop

    .line 243
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/Bundle;
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
