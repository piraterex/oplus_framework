.class public final Landroid/provider/ContactsContract$CommonDataKinds$Website;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;
.implements Landroid/provider/ContactsContract$ContactCounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Website"
.end annotation


# static fields
.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/website"

.field public static final whitelist TYPE_BLOG:I = 0x2

.field public static final whitelist TYPE_FTP:I = 0x6

.field public static final whitelist TYPE_HOME:I = 0x4

.field public static final whitelist TYPE_HOMEPAGE:I = 0x1

.field public static final whitelist TYPE_OTHER:I = 0x7

.field public static final whitelist TYPE_PROFILE:I = 0x3

.field public static final whitelist TYPE_WORK:I = 0x5

.field public static final whitelist URL:Ljava/lang/String; = "data1"


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 7638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
