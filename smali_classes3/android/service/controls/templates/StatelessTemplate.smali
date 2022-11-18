.class public final Landroid/service/controls/templates/StatelessTemplate;
.super Landroid/service/controls/templates/ControlTemplate;
.source "StatelessTemplate.java"


# direct methods
.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "b"    # Landroid/os/Bundle;

    .line 44
    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Landroid/os/Bundle;)V

    .line 45
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "templateId"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method


# virtual methods
.method public whitelist getTemplateType()I
    .locals 1

    .line 36
    const/16 v0, 0x8

    return v0
.end method
