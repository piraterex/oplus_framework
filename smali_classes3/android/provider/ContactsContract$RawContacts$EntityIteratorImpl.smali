.class Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;
.super Landroid/content/CursorEntityIterator;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$RawContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntityIteratorImpl"
.end annotation


# static fields
.field private static final greylist-max-o DATA_KEYS:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 19

    .line 3146
    const-string v0, "data1"

    const-string v1, "data2"

    const-string v2, "data3"

    const-string v3, "data4"

    const-string v4, "data5"

    const-string v5, "data6"

    const-string v6, "data7"

    const-string v7, "data8"

    const-string v8, "data9"

    const-string v9, "data10"

    const-string v10, "data11"

    const-string v11, "data12"

    const-string v12, "data13"

    const-string v13, "data14"

    const-string v14, "data15"

    const-string v15, "data_sync1"

    const-string v16, "data_sync2"

    const-string v17, "data_sync3"

    const-string v18, "data_sync4"

    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;->DATA_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 3168
    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    .line 3169
    return-void
.end method


# virtual methods
.method public greylist-max-o getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .locals 12
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3174
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 3175
    .local v1, "columnRawContactId":I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3178
    .local v2, "rawContactId":J
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3179
    .local v4, "cv":Landroid/content/ContentValues;
    const-string v5, "account_name"

    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3180
    const-string v5, "account_type"

    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3181
    const-string v5, "data_set"

    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3182
    invoke-static {p1, v4, v0}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3183
    const-string v5, "dirty"

    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3184
    const-string/jumbo v5, "version"

    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3185
    const-string/jumbo v5, "sourceid"

    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3186
    const-string/jumbo v5, "sync1"

    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3187
    const-string/jumbo v5, "sync2"

    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3188
    const-string/jumbo v5, "sync3"

    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3189
    const-string/jumbo v5, "sync4"

    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3190
    const-string v5, "deleted"

    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3191
    const-string v5, "contact_id"

    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3192
    const-string/jumbo v5, "starred"

    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3193
    new-instance v5, Landroid/content/Entity;

    invoke-direct {v5, v4}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 3197
    .local v5, "contact":Landroid/content/Entity;
    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    .line 3198
    goto :goto_2

    .line 3201
    :cond_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    move-object v4, v6

    .line 3202
    const-string v6, "data_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3203
    const-string/jumbo v6, "res_package"

    invoke-static {p1, v4, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3205
    const-string/jumbo v6, "mimetype"

    invoke-static {p1, v4, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3206
    const-string/jumbo v6, "is_primary"

    invoke-static {p1, v4, v6}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3207
    const-string/jumbo v6, "is_super_primary"

    invoke-static {p1, v4, v6}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3209
    const-string v6, "data_version"

    invoke-static {p1, v4, v6}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3210
    const-string/jumbo v7, "group_sourceid"

    invoke-static {p1, v4, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3212
    invoke-static {p1, v4, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3214
    sget-object v6, Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;->DATA_KEYS:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 3215
    .local v9, "key":Ljava/lang/String;
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 3216
    .local v10, "columnIndex":I
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getType(I)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 3229
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v6, "Invalid or unhandled data type"

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3226
    :pswitch_0
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 3227
    goto :goto_1

    .line 3223
    :pswitch_1
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3224
    goto :goto_1

    .line 3219
    :pswitch_2
    nop

    .line 3214
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "columnIndex":I
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3232
    :cond_2
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 3233
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3235
    :goto_2
    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
