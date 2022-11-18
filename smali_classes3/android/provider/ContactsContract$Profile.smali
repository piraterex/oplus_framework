.class public final Landroid/provider/ContactsContract$Profile;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$ContactsColumns;
.implements Landroid/provider/ContactsContract$ContactOptionsColumns;
.implements Landroid/provider/ContactsContract$ContactNameColumns;
.implements Landroid/provider/ContactsContract$ContactStatusColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Profile"
.end annotation


# static fields
.field public static final whitelist CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist CONTENT_VCARD_URI:Landroid/net/Uri;

.field public static final whitelist MIN_ID:J = 0x7fffffff80000000L


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 2311
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "profile"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 2319
    const-string v1, "as_vcard"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_VCARD_URI:Landroid/net/Uri;

    .line 2329
    const-string/jumbo v1, "raw_contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 2304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2305
    return-void
.end method
