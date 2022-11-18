.class public final Landroid/provider/Telephony$Mms$Addr;
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
    name = "Addr"
.end annotation


# static fields
.field public static final whitelist ADDRESS:Ljava/lang/String; = "address"

.field public static final whitelist CHARSET:Ljava/lang/String; = "charset"

.field public static final whitelist CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final whitelist MSG_ID:Ljava/lang/String; = "msg_id"

.field public static final whitelist TYPE:Ljava/lang/String; = "type"


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 2497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2498
    return-void
.end method

.method public static whitelist getAddrUriForMessage(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "messageId"    # Ljava/lang/String;

    .line 2540
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2541
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "addr"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 2542
    .local v0, "addrUri":Landroid/net/Uri;
    return-object v0
.end method
