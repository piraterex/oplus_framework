.class public final Landroid/app/time/TimeConfiguration$Builder;
.super Ljava/lang/Object;
.source "TimeConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/time/TimeConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mBundle:Landroid/os/Bundle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBundle(Landroid/app/time/TimeConfiguration$Builder;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/app/time/TimeConfiguration$Builder;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/time/TimeConfiguration$Builder;->mBundle:Landroid/os/Bundle;

    .line 117
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/time/TimeConfiguration;)V
    .locals 2
    .param p1, "configuration"    # Landroid/app/time/TimeConfiguration;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/time/TimeConfiguration$Builder;->mBundle:Landroid/os/Bundle;

    .line 120
    invoke-static {p1}, Landroid/app/time/TimeConfiguration;->-$$Nest$fgetmBundle(Landroid/app/time/TimeConfiguration;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 121
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/app/time/TimeConfiguration;
    .locals 2

    .line 138
    new-instance v0, Landroid/app/time/TimeConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/time/TimeConfiguration;-><init>(Landroid/app/time/TimeConfiguration$Builder;Landroid/app/time/TimeConfiguration-IA;)V

    return-object v0
.end method

.method blacklist merge(Landroid/os/Bundle;)Landroid/app/time/TimeConfiguration$Builder;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 131
    iget-object v0, p0, Landroid/app/time/TimeConfiguration$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 132
    return-object p0
.end method

.method public blacklist setAutoDetectionEnabled(Z)Landroid/app/time/TimeConfiguration$Builder;
    .locals 2
    .param p1, "enabled"    # Z

    .line 126
    iget-object v0, p0, Landroid/app/time/TimeConfiguration$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "autoDetectionEnabled"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    return-object p0
.end method
