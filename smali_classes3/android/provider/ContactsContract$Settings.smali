.class public final Landroid/provider/ContactsContract$Settings;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$SettingsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation


# static fields
.field public static final whitelist ACTION_SET_DEFAULT_ACCOUNT:Ljava/lang/String; = "android.provider.action.SET_DEFAULT_ACCOUNT"

.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/setting"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/setting"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist KEY_DEFAULT_ACCOUNT:Ljava/lang/String; = "key_default_account"

.field public static final blacklist QUERY_DEFAULT_ACCOUNT_METHOD:Ljava/lang/String; = "queryDefaultAccount"

.field public static final blacklist SET_DEFAULT_ACCOUNT_METHOD:Ljava/lang/String; = "setDefaultAccount"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 8768
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 8769
    const-string/jumbo v1, "settings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    .line 8768
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 8762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8763
    return-void
.end method

.method public static whitelist getDefaultAccount(Landroid/content/ContentResolver;)Landroid/accounts/Account;
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .line 8822
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "queryDefaultAccount"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 8824
    .local v0, "response":Landroid/os/Bundle;
    const-string/jumbo v1, "key_default_account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    return-object v1
.end method

.method public static whitelist setDefaultAccount(Landroid/content/ContentResolver;Landroid/accounts/Account;)V
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8845
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8846
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 8847
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v2, "account_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8848
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "account_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8851
    :cond_0
    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string/jumbo v3, "setDefaultAccount"

    invoke-virtual {p0, v1, v3, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 8852
    return-void
.end method
