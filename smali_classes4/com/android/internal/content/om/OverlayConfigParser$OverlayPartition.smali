.class Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;
.super Landroid/content/pm/PackagePartitions$SystemPartition;
.source "OverlayConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/om/OverlayConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OverlayPartition"
.end annotation


# static fields
.field static final blacklist POLICY_ODM:Ljava/lang/String; = "odm"

.field static final blacklist POLICY_OEM:Ljava/lang/String; = "oem"

.field static final blacklist POLICY_PRODUCT:Ljava/lang/String; = "product"

.field static final blacklist POLICY_PUBLIC:Ljava/lang/String; = "public"

.field static final blacklist POLICY_SYSTEM:Ljava/lang/String; = "system"

.field static final blacklist POLICY_VENDOR:Ljava/lang/String; = "vendor"


# instance fields
.field public final blacklist policy:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V
    .locals 1
    .param p1, "partition"    # Landroid/content/pm/PackagePartitions$SystemPartition;

    .line 132
    invoke-direct {p0, p1}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V

    .line 133
    invoke-static {p1}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->policyForPartition(Landroid/content/pm/PackagePartitions$SystemPartition;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->policy:Ljava/lang/String;

    .line 134
    return-void
.end method

.method constructor blacklist <init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$SystemPartition;)V
    .locals 1
    .param p1, "folder"    # Ljava/io/File;
    .param p2, "original"    # Landroid/content/pm/PackagePartitions$SystemPartition;

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$SystemPartition;)V

    .line 142
    invoke-static {p2}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->policyForPartition(Landroid/content/pm/PackagePartitions$SystemPartition;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->policy:Ljava/lang/String;

    .line 143
    return-void
.end method

.method private static blacklist policyForPartition(Landroid/content/pm/PackagePartitions$SystemPartition;)Ljava/lang/String;
    .locals 3
    .param p0, "partition"    # Landroid/content/pm/PackagePartitions$SystemPartition;

    .line 146
    iget v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    packed-switch v0, :pswitch_data_0

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to determine policy for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 160
    invoke-virtual {p0}, Landroid/content/pm/PackagePartitions$SystemPartition;->getFolder()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :pswitch_0
    const-string/jumbo v0, "product"

    return-object v0

    .line 155
    :pswitch_1
    const-string/jumbo v0, "oem"

    return-object v0

    .line 153
    :pswitch_2
    const-string/jumbo v0, "odm"

    return-object v0

    .line 151
    :pswitch_3
    const-string/jumbo v0, "vendor"

    return-object v0

    .line 149
    :pswitch_4
    const-string/jumbo v0, "system"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
