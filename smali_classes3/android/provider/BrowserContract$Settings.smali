.class public final Landroid/provider/BrowserContract$Settings;
.super Ljava/lang/Object;
.source "BrowserContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/BrowserContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation


# static fields
.field public static final greylist-max-o CONTENT_URI:Landroid/net/Uri;

.field public static final greylist-max-o KEY:Ljava/lang/String; = "key"

.field public static final greylist-max-o KEY_SYNC_ENABLED:Ljava/lang/String; = "sync_enabled"

.field public static final greylist-max-o VALUE:Ljava/lang/String; = "value"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 709
    sget-object v0, Landroid/provider/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "settings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/BrowserContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o isSyncEnabled(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 730
    const/4 v0, 0x0

    .line 732
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/BrowserContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "value"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "key=?"

    const-string/jumbo v5, "sync_enabled"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 734
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 737
    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 739
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 737
    :cond_2
    return v1

    .line 735
    :cond_3
    :goto_0
    nop

    .line 739
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 735
    :cond_4
    return v1

    .line 739
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 740
    :cond_5
    throw v1
.end method

.method public static greylist-max-o setSyncEnabled(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 747
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 748
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "key"

    const-string/jumbo v2, "sync_enabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 750
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/BrowserContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 751
    return-void
.end method
