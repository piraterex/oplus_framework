.class public abstract Landroid/app/people/IPeopleManager$Stub;
.super Landroid/os/Binder;
.source "IPeopleManager.java"

# interfaces
.implements Landroid/app/people/IPeopleManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/people/IPeopleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/people/IPeopleManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addOrUpdateStatus:I = 0x7

.field static final blacklist TRANSACTION_clearStatus:I = 0x8

.field static final blacklist TRANSACTION_clearStatuses:I = 0x9

.field static final blacklist TRANSACTION_getConversation:I = 0x1

.field static final blacklist TRANSACTION_getLastInteraction:I = 0x6

.field static final blacklist TRANSACTION_getRecentConversations:I = 0x2

.field static final blacklist TRANSACTION_getStatuses:I = 0xa

.field static final blacklist TRANSACTION_isConversation:I = 0x5

.field static final blacklist TRANSACTION_registerConversationListener:I = 0xb

.field static final blacklist TRANSACTION_removeAllRecentConversations:I = 0x4

.field static final blacklist TRANSACTION_removeRecentConversation:I = 0x3

.field static final blacklist TRANSACTION_unregisterConversationListener:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 84
    const-string v0, "android.app.people.IPeopleManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/people/IPeopleManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/people/IPeopleManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 92
    if-nez p0, :cond_0

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_0
    const-string v0, "android.app.people.IPeopleManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 96
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/people/IPeopleManager;

    if-eqz v1, :cond_1

    .line 97
    move-object v1, v0

    check-cast v1, Landroid/app/people/IPeopleManager;

    return-object v1

    .line 99
    :cond_1
    new-instance v1, Landroid/app/people/IPeopleManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/people/IPeopleManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 108
    packed-switch p0, :pswitch_data_0

    .line 160
    const/4 v0, 0x0

    return-object v0

    .line 156
    :pswitch_0
    const-string/jumbo v0, "unregisterConversationListener"

    return-object v0

    .line 152
    :pswitch_1
    const-string/jumbo v0, "registerConversationListener"

    return-object v0

    .line 148
    :pswitch_2
    const-string v0, "getStatuses"

    return-object v0

    .line 144
    :pswitch_3
    const-string v0, "clearStatuses"

    return-object v0

    .line 140
    :pswitch_4
    const-string v0, "clearStatus"

    return-object v0

    .line 136
    :pswitch_5
    const-string v0, "addOrUpdateStatus"

    return-object v0

    .line 132
    :pswitch_6
    const-string v0, "getLastInteraction"

    return-object v0

    .line 128
    :pswitch_7
    const-string v0, "isConversation"

    return-object v0

    .line 124
    :pswitch_8
    const-string/jumbo v0, "removeAllRecentConversations"

    return-object v0

    .line 120
    :pswitch_9
    const-string/jumbo v0, "removeRecentConversation"

    return-object v0

    .line 116
    :pswitch_a
    const-string v0, "getRecentConversations"

    return-object v0

    .line 112
    :pswitch_b
    const-string v0, "getConversation"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 103
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 604
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 167
    invoke-static {p1}, Landroid/app/people/IPeopleManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    const-string v0, "android.app.people.IPeopleManager"

    .line 172
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 173
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 183
    packed-switch p1, :pswitch_data_1

    .line 336
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 179
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    return v1

    .line 328
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/people/IConversationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/people/IConversationListener;

    move-result-object v2

    .line 329
    .local v2, "_arg0":Landroid/app/people/IConversationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 330
    invoke-virtual {p0, v2}, Landroid/app/people/IPeopleManager$Stub;->unregisterConversationListener(Landroid/app/people/IConversationListener;)V

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    goto/16 :goto_0

    .line 313
    .end local v2    # "_arg0":Landroid/app/people/IConversationListener;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 317
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 319
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/people/IConversationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/people/IConversationListener;

    move-result-object v5

    .line 320
    .local v5, "_arg3":Landroid/app/people/IConversationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/people/IPeopleManager$Stub;->registerConversationListener(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/IConversationListener;)V

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    goto/16 :goto_0

    .line 299
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Landroid/app/people/IConversationListener;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 301
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 303
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 304
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/people/IPeopleManager$Stub;->getStatuses(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    .line 306
    .local v5, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 308
    goto/16 :goto_0

    .line 286
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 288
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 290
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 291
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/people/IPeopleManager$Stub;->clearStatuses(Ljava/lang/String;ILjava/lang/String;)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    goto/16 :goto_0

    .line 271
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 273
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 275
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 277
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 278
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/people/IPeopleManager$Stub;->clearStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    goto/16 :goto_0

    .line 256
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 258
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 260
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 262
    .restart local v4    # "_arg2":Ljava/lang/String;
    sget-object v5, Landroid/app/people/ConversationStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/people/ConversationStatus;

    .line 263
    .local v5, "_arg3":Landroid/app/people/ConversationStatus;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/people/IPeopleManager$Stub;->addOrUpdateStatus(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/ConversationStatus;)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    goto/16 :goto_0

    .line 242
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Landroid/app/people/ConversationStatus;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 244
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 246
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 247
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/people/IPeopleManager$Stub;->getLastInteraction(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v5

    .line 249
    .local v5, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 251
    goto :goto_0

    .line 228
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":J
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 230
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 232
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 233
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/people/IPeopleManager$Stub;->isConversation(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    .line 235
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 237
    goto :goto_0

    .line 221
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_9
    invoke-virtual {p0}, Landroid/app/people/IPeopleManager$Stub;->removeAllRecentConversations()V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    goto :goto_0

    .line 209
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 211
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 213
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 214
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/people/IPeopleManager$Stub;->removeRecentConversation(Ljava/lang/String;ILjava/lang/String;)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    goto :goto_0

    .line 201
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p0}, Landroid/app/people/IPeopleManager$Stub;->getRecentConversations()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 202
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 204
    goto :goto_0

    .line 188
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 192
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 193
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/people/IPeopleManager$Stub;->getConversation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;

    move-result-object v5

    .line 195
    .local v5, "_result":Landroid/app/people/ConversationChannel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 197
    nop

    .line 339
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/app/people/ConversationChannel;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
