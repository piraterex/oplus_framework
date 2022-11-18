.class Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;
.super Ljava/lang/Object;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetPackagesForUidResult"
.end annotation


# instance fields
.field private final blacklist mValue:[Ljava/lang/String;


# direct methods
.method constructor blacklist <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # [Ljava/lang/String;

    .line 1099
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1100
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;->mValue:[Ljava/lang/String;

    .line 1101
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1119
    instance-of v0, p1, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1120
    move-object v0, p1

    check-cast v0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;

    iget-object v0, v0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;->mValue:[Ljava/lang/String;

    .line 1121
    .local v0, "r":[Ljava/lang/String;
    iget-object v2, p0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;->mValue:[Ljava/lang/String;

    .line 1122
    .local v2, "l":[Ljava/lang/String;
    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    if-nez v2, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    if-eq v4, v5, :cond_2

    .line 1123
    return v1

    .line 1124
    :cond_2
    if-nez v0, :cond_3

    .line 1125
    return v3

    .line 1128
    :cond_3
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1129
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1130
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1132
    .end local v0    # "r":[Ljava/lang/String;
    .end local v2    # "l":[Ljava/lang/String;
    :cond_4
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 1111
    iget-object v0, p0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;->mValue:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 1107
    iget-object v0, p0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;->mValue:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist value()[Ljava/lang/String;
    .locals 1

    .line 1103
    iget-object v0, p0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;->mValue:[Ljava/lang/String;

    return-object v0
.end method
