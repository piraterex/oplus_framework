.class public final Landroid/provider/ContactsContract$DataUsageFeedback;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataUsageFeedback"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist DELETE_USAGE_URI:Landroid/net/Uri;

.field public static final whitelist FEEDBACK_URI:Landroid/net/Uri;

.field public static final whitelist USAGE_TYPE:Ljava/lang/String; = "type"

.field public static final whitelist USAGE_TYPE_CALL:Ljava/lang/String; = "call"

.field public static final whitelist USAGE_TYPE_LONG_TEXT:Ljava/lang/String; = "long_text"

.field public static final whitelist USAGE_TYPE_SHORT_TEXT:Ljava/lang/String; = "short_text"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 8979
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 8980
    const-string/jumbo v1, "usagefeedback"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    .line 8987
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 8988
    const-string v1, "delete_usage"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$DataUsageFeedback;->DELETE_USAGE_URI:Landroid/net/Uri;

    .line 8987
    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 8973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
