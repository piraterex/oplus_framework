.class public final Landroid/os/NewUserRequest$Builder;
.super Ljava/lang/Object;
.source "NewUserRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/NewUserRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAccountName:Ljava/lang/String;

.field private blacklist mAccountOptions:Landroid/os/PersistableBundle;

.field private blacklist mAccountType:Ljava/lang/String;

.field private blacklist mAdmin:Z

.field private blacklist mEphemeral:Z

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mUserIcon:Landroid/graphics/Bitmap;

.field private blacklist mUserType:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAccountName(Landroid/os/NewUserRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/os/NewUserRequest$Builder;->mAccountName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAccountOptions(Landroid/os/NewUserRequest$Builder;)Landroid/os/PersistableBundle;
    .locals 0

    iget-object p0, p0, Landroid/os/NewUserRequest$Builder;->mAccountOptions:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAccountType(Landroid/os/NewUserRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/os/NewUserRequest$Builder;->mAccountType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAdmin(Landroid/os/NewUserRequest$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/NewUserRequest$Builder;->mAdmin:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEphemeral(Landroid/os/NewUserRequest$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/NewUserRequest$Builder;->mEphemeral:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmName(Landroid/os/NewUserRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/os/NewUserRequest$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserIcon(Landroid/os/NewUserRequest$Builder;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Landroid/os/NewUserRequest$Builder;->mUserIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserType(Landroid/os/NewUserRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/os/NewUserRequest$Builder;->mUserType:Ljava/lang/String;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const-string v0, "android.os.usertype.full.SECONDARY"

    iput-object v0, p0, Landroid/os/NewUserRequest$Builder;->mUserType:Ljava/lang/String;

    return-void
.end method

.method private blacklist checkIfPropertiesAreCompatible()V
    .locals 3

    .line 277
    iget-object v0, p0, Landroid/os/NewUserRequest$Builder;->mUserType:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 282
    iget-boolean v1, p0, Landroid/os/NewUserRequest$Builder;->mAdmin:Z

    if-eqz v1, :cond_1

    const-string v1, "android.os.usertype.full.SECONDARY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Admin user can\'t be of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/NewUserRequest$Builder;->mUserType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/os/NewUserRequest$Builder;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Landroid/os/NewUserRequest$Builder;->mAccountType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v0, v1, :cond_2

    .line 290
    return-void

    .line 287
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Account name and account type should be provided together."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Usertype cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/os/NewUserRequest;
    .locals 2

    .line 272
    invoke-direct {p0}, Landroid/os/NewUserRequest$Builder;->checkIfPropertiesAreCompatible()V

    .line 273
    new-instance v0, Landroid/os/NewUserRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/NewUserRequest;-><init>(Landroid/os/NewUserRequest$Builder;Landroid/os/NewUserRequest-IA;)V

    return-object v0
.end method

.method public whitelist setAccountName(Ljava/lang/String;)Landroid/os/NewUserRequest$Builder;
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .line 235
    iput-object p1, p0, Landroid/os/NewUserRequest$Builder;->mAccountName:Ljava/lang/String;

    .line 236
    return-object p0
.end method

.method public whitelist setAccountOptions(Landroid/os/PersistableBundle;)Landroid/os/NewUserRequest$Builder;
    .locals 0
    .param p1, "accountOptions"    # Landroid/os/PersistableBundle;

    .line 260
    iput-object p1, p0, Landroid/os/NewUserRequest$Builder;->mAccountOptions:Landroid/os/PersistableBundle;

    .line 261
    return-object p0
.end method

.method public whitelist setAccountType(Ljava/lang/String;)Landroid/os/NewUserRequest$Builder;
    .locals 0
    .param p1, "accountType"    # Ljava/lang/String;

    .line 248
    iput-object p1, p0, Landroid/os/NewUserRequest$Builder;->mAccountType:Ljava/lang/String;

    .line 249
    return-object p0
.end method

.method public whitelist setAdmin()Landroid/os/NewUserRequest$Builder;
    .locals 1

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/NewUserRequest$Builder;->mAdmin:Z

    .line 187
    return-object p0
.end method

.method public whitelist setEphemeral()Landroid/os/NewUserRequest$Builder;
    .locals 1

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/NewUserRequest$Builder;->mEphemeral:Z

    .line 200
    return-object p0
.end method

.method public whitelist setName(Ljava/lang/String;)Landroid/os/NewUserRequest$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 172
    iput-object p1, p0, Landroid/os/NewUserRequest$Builder;->mName:Ljava/lang/String;

    .line 173
    return-object p0
.end method

.method public whitelist setUserIcon(Landroid/graphics/Bitmap;)Landroid/os/NewUserRequest$Builder;
    .locals 0
    .param p1, "userIcon"    # Landroid/graphics/Bitmap;

    .line 223
    iput-object p1, p0, Landroid/os/NewUserRequest$Builder;->mUserIcon:Landroid/graphics/Bitmap;

    .line 224
    return-object p0
.end method

.method public whitelist setUserType(Ljava/lang/String;)Landroid/os/NewUserRequest$Builder;
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 212
    iput-object p1, p0, Landroid/os/NewUserRequest$Builder;->mUserType:Ljava/lang/String;

    .line 213
    return-object p0
.end method
