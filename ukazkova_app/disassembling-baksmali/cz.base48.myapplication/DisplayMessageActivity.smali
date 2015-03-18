.class public Lcz/base48/myapplication/DisplayMessageActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "DisplayMessageActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public newText()Ljava/lang/String;
    .registers 3

    move-object v0, p0

    const-string v1, "Podvodniku!"

    move-object v0, v1

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    move-object v2, v0

    invoke-virtual {v2}, Lcz/base48/myapplication/DisplayMessageActivity;->onCreateEx()V

    return-void
.end method

.method public onCreateEx()V
    .registers 9

    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Lcz/base48/myapplication/DisplayMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    move-object v1, v4

    move-object v4, v1

    const-string v5, "cz.base48.myapplication.MESSAGE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    new-instance v4, Landroid/widget/TextView;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v3, v4

    move-object v4, v3

    const/high16 v5, 0x42200000    # 40.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcz/base48/myapplication/DisplayMessageActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    move v2, v3

    move v3, v2

    const v4, 0x7f080040

    if-ne v3, v4, :cond_11

    const/4 v3, 0x1

    move v0, v3

    :goto_10
    return v0

    :cond_11
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    move v0, v3

    goto :goto_10
.end method
