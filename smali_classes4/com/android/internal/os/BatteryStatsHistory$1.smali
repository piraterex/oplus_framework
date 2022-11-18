.class Lcom/android/internal/os/BatteryStatsHistory$1;
.super Ljava/lang/Object;
.source "BatteryStatsHistory.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsHistory;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/io/File;Landroid/os/Parcel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/BatteryStatsHistory;

.field final synthetic blacklist val$dedup:Ljava/util/Set;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsHistory;Ljava/util/Set;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsHistory;

    .line 125
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory$1;->this$0:Lcom/android/internal/os/BatteryStatsHistory;

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory$1;->val$dedup:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 128
    const-string v0, ".bin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 129
    .local v0, "b":I
    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 130
    return v1

    .line 132
    :cond_0
    nop

    .line 133
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/internal/util/ParseUtils;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 134
    .local v2, "c":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_1

    .line 135
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory$1;->val$dedup:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    const/4 v1, 0x1

    return v1

    .line 138
    :cond_1
    return v1
.end method
