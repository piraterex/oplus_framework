.class public final Landroid/app/admin/ParcelableResource;
.super Ljava/lang/Object;
.source "ParcelableResource.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/ParcelableResource$ResourceType;
    }
.end annotation


# static fields
.field private static final blacklist ATTR_PACKAGE_NAME:Ljava/lang/String; = "package-name"

.field private static final blacklist ATTR_RESOURCE_ID:Ljava/lang/String; = "resource-id"

.field private static final blacklist ATTR_RESOURCE_NAME:Ljava/lang/String; = "resource-name"

.field private static final blacklist ATTR_RESOURCE_TYPE:Ljava/lang/String; = "resource-type"

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/ParcelableResource;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist RESOURCE_TYPE_DRAWABLE:I = 0x1

.field public static final blacklist RESOURCE_TYPE_STRING:I = 0x2

.field private static blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mResourceId:I

.field private final blacklist mResourceName:Ljava/lang/String;

.field private final blacklist mResourceType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 53
    const-string v0, "DevicePolicyManager"

    sput-object v0, Landroid/app/admin/ParcelableResource;->TAG:Ljava/lang/String;

    .line 344
    new-instance v0, Landroid/app/admin/ParcelableResource$1;

    invoke-direct {v0}, Landroid/app/admin/ParcelableResource$1;-><init>()V

    sput-object v0, Landroid/app/admin/ParcelableResource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "resourceId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resourceName"    # Ljava/lang/String;
    .param p4, "resourceType"    # I

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    .line 106
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/ParcelableResource;->mPackageName:Ljava/lang/String;

    .line 107
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    .line 108
    iput p4, p0, Landroid/app/admin/ParcelableResource;->mResourceType:I

    .line 109
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;ILandroid/app/admin/ParcelableResource-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/admin/ParcelableResource;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .param p3, "resourceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, "context must be provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    invoke-static {p1, p2, p3}, Landroid/app/admin/ParcelableResource;->verifyResourceExistsInCallingPackage(Landroid/content/Context;II)V

    .line 92
    iput p2, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/ParcelableResource;->mPackageName:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    .line 95
    iput p3, p0, Landroid/app/admin/ParcelableResource;->mResourceType:I

    .line 96
    return-void
.end method

.method public static blacklist createFromXml(Landroid/util/TypedXmlPullParser;)Landroid/app/admin/ParcelableResource;
    .locals 5
    .param p0, "xmlPullParser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    const/4 v0, 0x0

    const-string/jumbo v1, "resource-id"

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 304
    .local v1, "resourceId":I
    const-string/jumbo v2, "package-name"

    invoke-interface {p0, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "packageName":Ljava/lang/String;
    const-string/jumbo v3, "resource-name"

    invoke-interface {p0, v0, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, "resourceName":Ljava/lang/String;
    const-string/jumbo v4, "resource-type"

    invoke-interface {p0, v0, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 311
    .local v0, "resourceType":I
    new-instance v4, Landroid/app/admin/ParcelableResource;

    invoke-direct {v4, v1, v2, v3, v0}, Landroid/app/admin/ParcelableResource;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-object v4
.end method

.method private blacklist getAppResourcesWithCallersConfiguration(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 252
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Landroid/app/admin/ParcelableResource;->mPackageName:Ljava/lang/String;

    const/16 v2, 0x2400

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 256
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;Landroid/content/res/Configuration;)Landroid/content/res/Resources;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist hasDrawableInCallingPackage(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    .line 139
    :try_start_0
    const-string v0, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist hasStringInCallingPackage(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    .line 147
    :try_start_0
    const-string/jumbo v0, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .line 273
    .local p0, "defaultDrawableLoader":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/drawable/Drawable;>;"
    const-string v0, "defaultDrawableLoader can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 274
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static blacklist loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 282
    .local p0, "defaultStringLoader":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    const-string v0, "defaultStringLoader can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 283
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static blacklist verifyResourceExistsInCallingPackage(Landroid/content/Context;II)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I
    .param p2, "resourceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 114
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    packed-switch p2, :pswitch_data_0

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ResourceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :pswitch_0
    invoke-static {p0, p1}, Landroid/app/admin/ParcelableResource;->hasStringInCallingPackage(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 125
    const-string v0, "String with id %d doesn\'t exist in the calling package %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 116
    :pswitch_1
    invoke-static {p0, p1}, Landroid/app/admin/ParcelableResource;->hasDrawableInCallingPackage(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    :goto_0
    return-void

    .line 117
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 117
    const-string v0, "Drawable with id %d doesn\'t exist in the calling package %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist verifyResourceName(Landroid/content/res/Resources;)V
    .locals 5
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 260
    iget v0, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    return-void

    .line 262
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    .line 264
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 262
    const-string v3, "Current resource name %s for resource id %d has changed from the previously stored resource name %s."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 317
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 318
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 319
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/admin/ParcelableResource;

    .line 320
    .local v2, "other":Landroid/app/admin/ParcelableResource;
    iget v3, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    iget v4, v2, Landroid/app/admin/ParcelableResource;->mResourceId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/admin/ParcelableResource;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/admin/ParcelableResource;->mPackageName:Ljava/lang/String;

    .line 321
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    .line 322
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/app/admin/ParcelableResource;->mResourceType:I

    iget v4, v2, Landroid/app/admin/ParcelableResource;->mResourceType:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 320
    :goto_0
    return v0

    .line 318
    .end local v2    # "other":Landroid/app/admin/ParcelableResource;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getDrawable(Landroid/content/Context;ILjava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "density"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .line 187
    .local p3, "defaultDrawableLoader":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/drawable/Drawable;>;"
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/admin/ParcelableResource;->getAppResourcesWithCallersConfiguration(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    .line 188
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-direct {p0, v0}, Landroid/app/admin/ParcelableResource;->verifyResourceName(Landroid/content/res/Resources;)V

    .line 189
    iget v1, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 190
    .end local v0    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/app/admin/ParcelableResource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load drawable resource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    invoke-static {p3}, Landroid/app/admin/ParcelableResource;->loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Landroid/app/admin/ParcelableResource;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getResourceId()I
    .locals 1

    .line 154
    iget v0, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    return v0
.end method

.method public blacklist getResourceName()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getResourceType()I
    .locals 1

    .line 168
    iget v0, p0, Landroid/app/admin/ParcelableResource;->mResourceType:I

    return v0
.end method

.method public blacklist getString(Landroid/content/Context;Ljava/util/function/Supplier;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 211
    .local p2, "defaultStringLoader":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/admin/ParcelableResource;->getAppResourcesWithCallersConfiguration(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    .line 212
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-direct {p0, v0}, Landroid/app/admin/ParcelableResource;->verifyResourceName(Landroid/content/res/Resources;)V

    .line 213
    iget v1, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 214
    .end local v0    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/app/admin/ParcelableResource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load string resource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public varargs blacklist getString(Landroid/content/Context;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 236
    .local p2, "defaultStringLoader":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/admin/ParcelableResource;->getAppResourcesWithCallersConfiguration(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    .line 237
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-direct {p0, v0}, Landroid/app/admin/ParcelableResource;->verifyResourceName(Landroid/content/res/Resources;)V

    .line 238
    iget v1, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "rawString":Ljava/lang/String;
    nop

    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 239
    invoke-static {v2, v1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 243
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local v1    # "rawString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/app/admin/ParcelableResource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load string resource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 328
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/admin/ParcelableResource;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/admin/ParcelableResource;->mResourceType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 338
    iget v0, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget-object v0, p0, Landroid/app/admin/ParcelableResource;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    iget v0, p0, Landroid/app/admin/ParcelableResource;->mResourceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    return-void
.end method

.method public blacklist writeToXmlFile(Landroid/util/TypedXmlSerializer;)V
    .locals 3
    .param p1, "xmlSerializer"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    iget v0, p0, Landroid/app/admin/ParcelableResource;->mResourceId:I

    const/4 v1, 0x0

    const-string/jumbo v2, "resource-id"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 292
    iget-object v0, p0, Landroid/app/admin/ParcelableResource;->mPackageName:Ljava/lang/String;

    const-string/jumbo v2, "package-name"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    iget-object v0, p0, Landroid/app/admin/ParcelableResource;->mResourceName:Ljava/lang/String;

    const-string/jumbo v2, "resource-name"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 294
    iget v0, p0, Landroid/app/admin/ParcelableResource;->mResourceType:I

    const-string/jumbo v2, "resource-type"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 295
    return-void
.end method
