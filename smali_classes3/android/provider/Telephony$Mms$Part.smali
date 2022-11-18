.class public final Landroid/provider/Telephony$Mms$Part;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Mms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Part"
.end annotation


# static fields
.field public static final whitelist CHARSET:Ljava/lang/String; = "chset"

.field public static final whitelist CONTENT_DISPOSITION:Ljava/lang/String; = "cd"

.field public static final whitelist CONTENT_ID:Ljava/lang/String; = "cid"

.field public static final whitelist CONTENT_LOCATION:Ljava/lang/String; = "cl"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "ct"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist CT_START:Ljava/lang/String; = "ctt_s"

.field public static final whitelist CT_TYPE:Ljava/lang/String; = "ctt_t"

.field public static final whitelist FILENAME:Ljava/lang/String; = "fn"

.field public static final whitelist MSG_ID:Ljava/lang/String; = "mid"

.field public static final whitelist NAME:Ljava/lang/String; = "name"

.field public static final whitelist SEQ:Ljava/lang/String; = "seq"

.field private static final blacklist TABLE_PART:Ljava/lang/String; = "part"

.field public static final whitelist TEXT:Ljava/lang/String; = "text"

.field public static final whitelist _DATA:Ljava/lang/String; = "_data"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 2571
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "part"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Mms$Part;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 2558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2559
    return-void
.end method

.method public static whitelist getPartUriForMessage(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "messageId"    # Ljava/lang/String;

    .line 2660
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2661
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "part"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2662
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 2663
    .local v0, "partUri":Landroid/net/Uri;
    return-object v0
.end method
