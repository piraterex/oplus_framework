.class public final Landroid/provider/ContactsContract$Contacts$Data;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$DataColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation


# static fields
.field public static final whitelist CONTENT_DIRECTORY:Ljava/lang/String; = "data"


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 1843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
