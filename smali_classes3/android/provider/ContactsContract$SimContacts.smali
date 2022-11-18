.class public final Landroid/provider/ContactsContract$SimContacts;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimContacts"
.end annotation


# static fields
.field public static final whitelist ACTION_SIM_ACCOUNTS_CHANGED:Ljava/lang/String; = "android.provider.action.SIM_ACCOUNTS_CHANGED"

.field public static final blacklist ADD_SIM_ACCOUNT_METHOD:Ljava/lang/String; = "addSimAccount"

.field public static final blacklist KEY_ACCOUNT_NAME:Ljava/lang/String; = "key_sim_account_name"

.field public static final blacklist KEY_ACCOUNT_TYPE:Ljava/lang/String; = "key_sim_account_type"

.field public static final blacklist KEY_SIM_ACCOUNTS:Ljava/lang/String; = "key_sim_accounts"

.field public static final blacklist KEY_SIM_EF_TYPE:Ljava/lang/String; = "key_sim_ef_type"

.field public static final blacklist KEY_SIM_SLOT_INDEX:Ljava/lang/String; = "key_sim_slot_index"

.field public static final blacklist QUERY_SIM_ACCOUNTS_METHOD:Ljava/lang/String; = "querySimAccounts"

.field public static final blacklist REMOVE_SIM_ACCOUNT_METHOD:Ljava/lang/String; = "removeSimAccount"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 8311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8312
    return-void
.end method

.method public static whitelist addSimAccount(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "simSlotIndex"    # I
    .param p4, "efType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8397
    if-ltz p3, :cond_2

    .line 8400
    invoke-static {}, Landroid/provider/ContactsContract$SimAccount;->getValidEfTypes()Ljava/util/Set;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8403
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8407
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8408
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "key_sim_slot_index"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8409
    const-string/jumbo v1, "key_sim_ef_type"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8410
    const-string/jumbo v1, "key_sim_account_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8411
    const-string/jumbo v1, "key_sim_account_type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8413
    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "addSimAccount"

    invoke-virtual {p0, v1, v3, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 8416
    return-void

    .line 8404
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account name or type is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8401
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid EF type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8398
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sim slot is negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist getSimAccounts(Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 3
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List<",
            "Landroid/provider/ContactsContract$SimAccount;",
            ">;"
        }
    .end annotation

    .line 8448
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "querySimAccounts"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 8451
    .local v0, "response":Landroid/os/Bundle;
    const-string/jumbo v1, "key_sim_accounts"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 8453
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/provider/ContactsContract$SimAccount;>;"
    if-nez v1, :cond_0

    .line 8454
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 8457
    :cond_0
    return-object v1
.end method

.method public static whitelist removeSimAccounts(Landroid/content/ContentResolver;I)V
    .locals 4
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "simSlotIndex"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8429
    if-ltz p1, :cond_0

    .line 8433
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8434
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "key_sim_slot_index"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8436
    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string/jumbo v3, "removeSimAccount"

    invoke-virtual {p0, v1, v3, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 8439
    return-void

    .line 8430
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sim slot is negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
