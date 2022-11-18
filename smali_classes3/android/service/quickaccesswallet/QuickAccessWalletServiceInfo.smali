.class Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;
.super Ljava/lang/Object;
.source "QuickAccessWalletServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;,
        Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "QAWalletSInfo"

.field private static final blacklist TAG_WALLET_SERVICE:Ljava/lang/String; = "quickaccesswallet-service"


# instance fields
.field private final blacklist mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private final blacklist mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

.field private final blacklist mTileServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;


# direct methods
.method private constructor blacklist <init>(Landroid/content/pm/ServiceInfo;Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;)V
    .locals 0
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;
    .param p2, "metadata"    # Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;
    .param p3, "tileServiceMetadata"    # Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 66
    iput-object p2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    .line 67
    iput-object p3, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mTileServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;

    .line 68
    return-void
.end method

.method private static blacklist getDefaultPaymentApp(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 97
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "nfc_payment_default_component"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "comp":Ljava/lang/String;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method private static blacklist getWalletServiceInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ServiceInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.quickaccesswallet.QuickAccessWalletService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    nop

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const v2, 0xd0080

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 110
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    :goto_0
    return-object v2
.end method

.method private static blacklist parseServiceMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 165
    move-object/from16 v1, p1

    const-string v2, "QAWalletSInfo"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 166
    .local v3, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 167
    const-string v0, "android.quickaccesswallet"

    invoke-virtual {v1, v3, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 169
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v4, :cond_0

    .line 170
    invoke-static {}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$smempty()Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    move-result-object v0

    return-object v0

    .line 174
    :cond_0
    :try_start_0
    iget-object v0, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    move-object v5, v0

    .line 175
    .local v5, "resources":Landroid/content/res/Resources;
    const/4 v0, 0x0

    move v6, v0

    .line 176
    .local v6, "type":I
    :goto_0
    const/4 v0, 0x2

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    if-eq v6, v0, :cond_1

    .line 177
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v6, v0

    goto :goto_0

    .line 180
    :cond_1
    const-string/jumbo v8, "quickaccesswallet-service"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 181
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .local v8, "allAttributes":Landroid/util/AttributeSet;
    const/4 v9, 0x0

    .line 184
    .local v9, "afsAttributes":Landroid/content/res/TypedArray;
    :try_start_1
    sget-object v10, Lcom/android/internal/R$styleable;->QuickAccessWalletService:[I

    invoke-virtual {v5, v8, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    move-object v9, v10

    .line 186
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 188
    .local v12, "targetActivity":Ljava/lang/String;
    invoke-virtual {v9, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 190
    .local v13, "settingsActivity":Ljava/lang/String;
    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 192
    .local v14, "shortcutShortLabel":Ljava/lang/CharSequence;
    const/4 v0, 0x3

    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 194
    .local v15, "shortcutLongLabel":Ljava/lang/CharSequence;
    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    const/16 v16, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata-IA;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    if-eqz v9, :cond_2

    .line 198
    :try_start_2
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 194
    :cond_2
    return-object v0

    .line 197
    .end local v12    # "targetActivity":Ljava/lang/String;
    .end local v13    # "settingsActivity":Ljava/lang/String;
    .end local v14    # "shortcutShortLabel":Ljava/lang/CharSequence;
    .end local v15    # "shortcutLongLabel":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 198
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 200
    :cond_3
    nop

    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    throw v0

    .line 202
    .end local v8    # "allAttributes":Landroid/util/AttributeSet;
    .end local v9    # "afsAttributes":Landroid/content/res/TypedArray;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_4
    const-string v0, "Meta-data does not start with quickaccesswallet-service tag"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 208
    nop

    .end local v5    # "resources":Landroid/content/res/Resources;
    .end local v6    # "type":I
    goto :goto_1

    .line 204
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Error parsing quickaccesswallet service meta-data"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$smempty()Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseTileServiceMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 125
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 126
    const-string v2, "android.quickaccesswallet.tile"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 127
    .local v1, "tileIconDrawableId":I
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 129
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 130
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 131
    .end local v3    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v3

    .line 132
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "QAWalletSInfo"

    const-string v5, "Error parsing quickaccesswallet tile service meta-data"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return-object v2
.end method

.method static blacklist tryCreate(Landroid/content/Context;)Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 72
    invoke-static {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getDefaultPaymentApp(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    .line 73
    .local v0, "defaultPaymentApp":Landroid/content/ComponentName;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 74
    return-object v1

    .line 77
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->getWalletServiceInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 78
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-nez v2, :cond_1

    .line 79
    return-object v1

    .line 82
    :cond_1
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v4, "android.permission.BIND_QUICK_ACCESS_WALLET_SERVICE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 83
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    iget-object v6, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, "%s.%s does not require permission %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "QAWalletSInfo"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-object v1

    .line 89
    :cond_2
    invoke-static {p0, v2}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->parseServiceMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    move-result-object v3

    .line 90
    .local v3, "metadata":Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;
    new-instance v4, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;

    .line 91
    invoke-static {p0, v2}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->parseTileServiceMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;-><init>(Landroid/graphics/drawable/Drawable;Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata-IA;)V

    move-object v1, v4

    .line 92
    .local v1, "tileServiceMetadata":Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;
    new-instance v4, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;

    invoke-direct {v4, v2, v3, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;)V

    return-object v4
.end method


# virtual methods
.method blacklist getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 217
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method blacklist getServiceLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 272
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method blacklist getSettingsActivity()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$fgetmSettingsActivity(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getShortcutLongLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 264
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$fgetmShortcutLongLabel(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$fgetmShortcutLongLabel(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 267
    :cond_0
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method blacklist getShortcutShortLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 256
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$fgetmShortcutShortLabel(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$fgetmShortcutShortLabel(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 259
    :cond_0
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method blacklist getTileIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 251
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mTileServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;->-$$Nest$fgetmTileIcon(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method blacklist getWalletActivity()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceMetadata:Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;->-$$Nest$fgetmTargetActivity(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$ServiceMetadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getWalletLogo(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 242
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ServiceInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 243
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 244
    return-object v0

    .line 246
    :cond_0
    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method
