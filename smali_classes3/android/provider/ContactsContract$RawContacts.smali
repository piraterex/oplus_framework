.class public final Landroid/provider/ContactsContract$RawContacts;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$RawContactsColumns;
.implements Landroid/provider/ContactsContract$ContactOptionsColumns;
.implements Landroid/provider/ContactsContract$ContactNameColumns;
.implements Landroid/provider/ContactsContract$SyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RawContacts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;,
        Landroid/provider/ContactsContract$RawContacts$DisplayPhoto;,
        Landroid/provider/ContactsContract$RawContacts$StreamItems;,
        Landroid/provider/ContactsContract$RawContacts$Entity;,
        Landroid/provider/ContactsContract$RawContacts$Data;
    }
.end annotation


# static fields
.field public static final whitelist AGGREGATION_MODE_DEFAULT:I = 0x0

.field public static final whitelist AGGREGATION_MODE_DISABLED:I = 0x3

.field public static final whitelist AGGREGATION_MODE_IMMEDIATE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist AGGREGATION_MODE_SUSPENDED:I = 0x2

.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/raw_contact"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/raw_contact"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 2858
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "raw_contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 2851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2852
    return-void
.end method

.method public static whitelist getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "rawContactUri"    # Landroid/net/Uri;

    .line 2928
    const-string v0, "data"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2929
    .local v0, "dataUri":Landroid/net/Uri;
    const-string v1, "contact_id"

    const-string/jumbo v2, "lookup"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2933
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 2935
    .local v2, "lookupUri":Landroid/net/Uri;
    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2936
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2937
    .local v3, "contactId":J
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2938
    .local v5, "lookupKey":Ljava/lang/String;
    invoke-static {v3, v4, v5}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2941
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2938
    :cond_0
    return-object v6

    .line 2941
    .end local v3    # "contactId":J
    .end local v5    # "lookupKey":Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2942
    :cond_1
    throw v3

    .line 2941
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2943
    :cond_3
    return-object v2
.end method

.method public static whitelist getLocalAccountName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 2961
    const v0, 0x10402a9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getLocalAccountType(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 2980
    const v0, 0x10402aa

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 3142
    new-instance v0, Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;

    invoke-direct {v0, p0}, Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method
