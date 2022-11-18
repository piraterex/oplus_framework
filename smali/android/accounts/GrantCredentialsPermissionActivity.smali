.class public Landroid/accounts/GrantCredentialsPermissionActivity;
.super Landroid/app/Activity;
.source "GrantCredentialsPermissionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final greylist-max-o EXTRAS_ACCOUNT:Ljava/lang/String; = "account"

.field public static final greylist-max-o EXTRAS_AUTH_TOKEN_TYPE:Ljava/lang/String; = "authTokenType"

.field public static final greylist-max-o EXTRAS_REQUESTING_UID:Ljava/lang/String; = "uid"

.field public static final greylist-max-o EXTRAS_RESPONSE:Ljava/lang/String; = "response"


# instance fields
.field private greylist-max-o mAccount:Landroid/accounts/Account;

.field private greylist-max-o mAuthTokenType:Ljava/lang/String;

.field private blacklist mCallingUid:I

.field protected greylist-max-o mInflater:Landroid/view/LayoutInflater;

.field private greylist-max-o mResultBundle:Landroid/os/Bundle;

.field private greylist-max-o mUid:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mResultBundle:Landroid/os/Bundle;

    return-void
.end method

.method private greylist-max-o getAccountLabel(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;

    .line 151
    nop

    .line 152
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 153
    .local v0, "authenticatorTypes":[Landroid/accounts/AuthenticatorDescription;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "N":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 154
    aget-object v3, v0, v1

    .line 155
    .local v3, "desc":Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    :try_start_0
    iget-object v4, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/accounts/GrantCredentialsPermissionActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    iget v5, v3, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 160
    :catch_0
    move-exception v4

    .line 161
    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    return-object v5

    .line 158
    .end local v4    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v4

    .line 159
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    return-object v5

    .line 153
    .end local v3    # "desc":Landroid/accounts/AuthenticatorDescription;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_1
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    return-object v1
.end method

.method private greylist-max-o newPackageView(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .param p1, "packageLabel"    # Ljava/lang/String;

    .line 169
    iget-object v0, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x10900d4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 170
    .local v0, "view":Landroid/view/View;
    const v1, 0x1020414

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-object v0
.end method


# virtual methods
.method public whitelist finish()V
    .locals 4

    .line 201
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "response"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountAuthenticatorResponse;

    .line 203
    .local v1, "response":Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v1, :cond_1

    .line 205
    iget-object v2, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mResultBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 206
    invoke-virtual {v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    goto :goto_0

    .line 208
    :cond_0
    const/4 v2, 0x4

    const-string v3, "canceled"

    invoke-virtual {v1, v2, v3}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 211
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 212
    return-void
.end method

.method public whitelist onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 185
    :sswitch_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    iget v3, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mUid:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/accounts/AccountManager;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    .line 186
    invoke-virtual {p0, v4}, Landroid/accounts/GrantCredentialsPermissionActivity;->setResult(I)V

    goto :goto_0

    .line 177
    :sswitch_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    iget v3, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mUid:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/accounts/AccountManager;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    .line 178
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 179
    .local v0, "result":Landroid/content/Intent;
    const-string/jumbo v1, "retry"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/accounts/GrantCredentialsPermissionActivity;->setResult(ILandroid/content/Intent;)V

    .line 181
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/accounts/GrantCredentialsPermissionActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 182
    nop

    .line 189
    .end local v0    # "result":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->finish()V

    .line 190
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10201e0 -> :sswitch_1
        0x10202a0 -> :sswitch_0
    .end sparse-switch
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    .line 57
    const v0, 0x1090086

    invoke-virtual {p0, v0}, Landroid/accounts/GrantCredentialsPermissionActivity;->setContentView(I)V

    .line 58
    const v0, 0x1040445

    invoke-virtual {p0, v0}, Landroid/accounts/GrantCredentialsPermissionActivity;->setTitle(I)V

    .line 60
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/accounts/GrantCredentialsPermissionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 62
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 63
    .local v0, "extras":Landroid/os/Bundle;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0, v1}, Landroid/accounts/GrantCredentialsPermissionActivity;->setResult(I)V

    .line 66
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->finish()V

    .line 67
    return-void

    .line 71
    :cond_0
    const-string v2, "account"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    iput-object v2, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    .line 72
    const-string v2, "authTokenType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    .line 73
    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mUid:I

    .line 74
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 75
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget v3, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mUid:I

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "packages":[Ljava/lang/String;
    iget-object v4, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    if-eqz v4, :cond_5

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 84
    :cond_1
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->getLaunchedFromUid()I

    move-result v4

    iput v4, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mCallingUid:I

    .line 86
    const/16 v5, 0x3e8

    invoke-static {v4, v5}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mCallingUid:I

    iget v5, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mUid:I

    if-eq v4, v5, :cond_2

    .line 87
    invoke-virtual {p0, v1}, Landroid/accounts/GrantCredentialsPermissionActivity;->setResult(I)V

    .line 88
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->finish()V

    .line 89
    return-void

    .line 94
    :cond_2
    :try_start_0
    iget-object v4, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v4}, Landroid/accounts/GrantCredentialsPermissionActivity;->getAccountLabel(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    .local v4, "accountTypeLabel":Ljava/lang/String;
    nop

    .line 102
    const v5, 0x10201f9

    invoke-virtual {p0, v5}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 103
    .local v5, "authTokenTypeView":Landroid/widget/TextView;
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    new-instance v6, Landroid/accounts/GrantCredentialsPermissionActivity$1;

    invoke-direct {v6, p0, v5}, Landroid/accounts/GrantCredentialsPermissionActivity$1;-><init>(Landroid/accounts/GrantCredentialsPermissionActivity;Landroid/widget/TextView;)V

    .line 126
    .local v6, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/String;>;"
    iget-object v7, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    const-string v8, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 127
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    iget-object v8, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v9, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v6, v10}, Landroid/accounts/AccountManager;->getAuthTokenLabel(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 131
    :cond_3
    const v7, 0x10201e0

    invoke-virtual {p0, v7}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v7, 0x10202a0

    invoke-virtual {p0, v7}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v7, 0x1020415

    invoke-virtual {p0, v7}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 136
    .local v7, "packagesListView":Landroid/widget/LinearLayout;
    array-length v8, v3

    move v9, v1

    :goto_0
    if-ge v9, v8, :cond_4

    aget-object v10, v3, v9

    .line 139
    .local v10, "pkg":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2, v10, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    .local v11, "packageLabel":Ljava/lang/String;
    goto :goto_1

    .line 140
    .end local v11    # "packageLabel":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 141
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v12, v10

    move-object v11, v12

    .line 143
    .local v11, "packageLabel":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v11}, Landroid/accounts/GrantCredentialsPermissionActivity;->newPackageView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v11    # "packageLabel":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 146
    :cond_4
    const v1, 0x10201aa

    invoke-virtual {p0, v1}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v8, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const v1, 0x10201ad

    invoke-virtual {p0, v1}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-void

    .line 95
    .end local v4    # "accountTypeLabel":Ljava/lang/String;
    .end local v5    # "authTokenTypeView":Landroid/widget/TextView;
    .end local v6    # "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/String;>;"
    .end local v7    # "packagesListView":Landroid/widget/LinearLayout;
    :catch_1
    move-exception v4

    .line 97
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0, v1}, Landroid/accounts/GrantCredentialsPermissionActivity;->setResult(I)V

    .line 98
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->finish()V

    .line 99
    return-void

    .line 79
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_5
    :goto_2
    invoke-virtual {p0, v1}, Landroid/accounts/GrantCredentialsPermissionActivity;->setResult(I)V

    .line 80
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->finish()V

    .line 81
    return-void
.end method

.method public final greylist-max-o setAccountAuthenticatorResult(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Bundle;

    .line 193
    iput-object p1, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mResultBundle:Landroid/os/Bundle;

    .line 194
    return-void
.end method
