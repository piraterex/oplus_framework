.class public final Landroid/provider/SearchIndexablesContract$XmlResource;
.super Landroid/provider/SearchIndexablesContract$BaseColumns;
.source "SearchIndexablesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SearchIndexablesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XmlResource"
.end annotation


# static fields
.field public static final whitelist COLUMN_XML_RESID:Ljava/lang/String; = "xmlResId"

.field public static final whitelist MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/indexables_xml_res"


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 1

    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/provider/SearchIndexablesContract$BaseColumns;-><init>(Landroid/provider/SearchIndexablesContract$BaseColumns-IA;)V

    .line 241
    return-void
.end method
